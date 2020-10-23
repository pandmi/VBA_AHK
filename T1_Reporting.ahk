#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; Performance reports

Run, https://t1.mediamath.com/reporting/v1/std/performance?dimensions=organization_name`,agency_name`,advertiser_id`,advertiser_name`,campaign_id`,campaign_name`,campaign_start_date`,campaign_end_date`,campaign_currency_code`,campaign_budget`,campaign_goal_value`,exchange_name`,concept_name`,creative_id`,creative_name`,creative_size`,strategy_id`,strategy_name&filter=campaign_id=111111&metrics=impressions`,clicks`,post_click_conversions`,post_view_conversions`,total_conversions`,total_spend&precision=4&time_rollup=by_day&order=concept_name&start_date=2019-07-01&end_date=2019-11-30	
WinWaitActive, Save As, , 50000
if ErrorLevel <> 0
{
	MsgBox, WinWait timed out.
	return
}
else
ControlSetText, Edit1, C:\Users\XXXXXX\performance_raw.csv, Save As
Send, {Enter}
Sleep, 1000
Send, {Left}
Sleep, 1000
Send, {Enter}
Sleep, 1000



; Device technology


Run, https://t1.mediamath.com/reporting/v1/std/device_technology?dimensions=organization_name`,advertiser_name`,campaign_id`,campaign_name`,campaign_start_date`,campaign_end_date`,campaign_currency_code`,campaign_timezone`,connection_type`,device_type`,os_version`,inventory_type`,browser`,exchange_name`,strategy_id`,strategy_name&filter=campaign_id=111111&metrics=impressions`,clicks`,post_click_conversions`,post_view_conversions`,total_conversions`,total_spend&precision=4&time_rollup=by_day&order=date&start_date=2019-07-01&end_date=2019-11-30	
WinWaitActive, Save As, , 50000
if ErrorLevel <> 0
{
	MsgBox, WinWait timed out.
	return
}
else
ControlSetText, Edit1, C:\Users\XXXXXX\raw_device.csv, Save As
Send, {Enter}
Sleep, 1000
Send, {Left}
Sleep, 1000
Send, {Enter}
Sleep, 1000



; Reach and Frequency

Run, https://t1.mediamath.com/reporting/v1/std/reach_frequency?dimensions=organization_id`,organization_name`,agency_name`,advertiser_name`,campaign_id`,campaign_name`,strategy_id`,strategy_name`,frequency`,frequency_bin&filter=campaign_id=111111&metrics=impressions`,uniques`,clicks`,post_click_conversions`,post_view_conversions`,total_conversions&time_window=last_7_days&time_rollup=all
WinWaitActive, Save As, , 50000
if ErrorLevel <> 0
{
	MsgBox, WinWait timed out.
	return
}
else
ControlSetText, Edit1, C:\Users\XXXXXX\reach_and_frequency.csv, Save As
Send, {Enter}
Sleep, 1000
Send, {Left}
Sleep, 1000
Send, {Enter}
Sleep, 1000



; Postal code

Run, https://t1.mediamath.com/reporting/v1/std/postal_code?dimensions=organization_id`,organization_name`,agency_name`,advertiser_name`,campaign_id`,campaign_name`,strategy_id`,strategy_name`,postal_code&filter=campaign_id=111111&metrics=impressions`,clicks`,post_click_conversions`,post_view_conversions`,total_conversions&time_window=last_30_days&time_rollup=all
WinWaitActive, Save As, , 50000
if ErrorLevel <> 0
{
	MsgBox, WinWait timed out.
	return
}
else
ControlSetText, Edit1, C:\Users\XXXXXX\postal_code.csv, Save As
Send, {Enter}
Sleep, 1000
Send, {Left}
Sleep, 1000
Send, {Enter}
Sleep, 1000



; Sitelist 

Run, https://t1.mediamath.com/reporting/v1/std/site_transparency?dimensions=site_domain`,organization_name`,agency_name`,advertiser_name`,campaign_id`,campaign_name`,campaign_start_date`,campaign_end_date`,campaign_budget`,exchange_name`,strategy_id`,strategy_name&filter=campaign_id=111111&metrics=impressions`,clicks`,post_click_conversions`,post_view_conversions`,total_conversions`,video_complete`,media_cost`,total_ad_cost`,total_spend&time_window=campaign_to_date&time_rollup=all 
WinWaitActive, Save As, , 50000
if ErrorLevel <> 0
{
	MsgBox, WinWait timed out.
	return
}
else
ControlSetText, Edit1, C:\Users\XXXXXX\site_transparency.csv, Save As
Send, {Enter}
Sleep, 1000
Send, {Left}
Sleep, 1000
Send, {Enter}
Sleep, 1000



; App Transparency

Run, https://t1.mediamath.com/reporting/v1/std/app_transparency?dimensions=app_id,organization_name,agency_name,advertiser_name,campaign_name&filter=campaign_id=111111&metrics=impressions,clicks,post_click_conversions,post_view_conversions,total_conversions,media_cost,total_ad_cost,total_spend,total_spend_cpc&time_window=month_to_date&time_rollup=all
WinWaitActive, Save As, , 50000
if ErrorLevel <> 0
{
	MsgBox, WinWait timed out.
	return
}
else
ControlSetText, Edit1, C:\Users\XXXXXX\app_transparency.csv, Save As
Send, {Enter}
Sleep, 1000
Send, {Left}
Sleep, 1000
Send, {Enter}
Sleep, 1000



; Geo

Run, https://t1.mediamath.com/reporting/v1/std/geo?dimensions=agency_name`,advertiser_name`,country_name`,region_name`,metro_name`,campaign_id`,campaign_name`,campaign_start_date`,campaign_end_date`,campaign_budget`&filter=campaign_id=111111&metrics=impressions`,clicks`,post_click_conversions`,post_view_conversions`,total_conversions`,media_cost`,total_ad_cost`,total_spend&time_rollup=all&start_date=2019-07-01&end_date=2019-11-30 
WinWaitActive, Save As, , 50000
if ErrorLevel <> 0
{
	MsgBox, WinWait timed out.
	return
}
else
ControlSetText, Edit1, C:\Users\XXXXXX\geo.csv, Save As
Send, {Enter}
Sleep, 1000
Send, {Left}
Sleep, 1000
Send, {Enter}
Sleep, 1000



;Day part

Run, https://t1.mediamath.com/reporting/v1/std/day_part?dimensions=campaign_name`,strategy_name`,exchange_name`,day_part_name`,weekday_name&filter=campaign_id=111111&metrics=impressions`,clicks`,post_click_conversions`,post_view_conversions`,total_conversions`,total_spend`,media_cost&precision=4&time_window=campaign_to_date&time_rollup=all 
WinWaitActive, Save As, , 50000
if ErrorLevel <> 0
{
	MsgBox, WinWait timed out.
	return
}
else
ControlSetText, Edit1, C:\Users\XXXXXX\daypart.csv, Save As
Send, {Enter}
Sleep, 1000
Send, {Left}
Sleep, 1000
Send, {Enter}
Sleep, 1000


;Winlos 

Run, https://t1.mediamath.com/reporting/v1/std/win_loss?dimensions=organization_name`,agency_name`,advertiser_name`,campaign_id`,campaign_name`,campaign_start_date`,campaign_end_date`,campaign_budget`,exchange_name&filter=campaign_id=111111&metrics=average_bid_amount_cpm`,average_win_amount_cpm`,bid_rate`,bids`,matched_bid_opportunities`,max_bid_amount_cpm`,max_win_amount_cpm`,min_bid_amount_cpm`,min_win_amount_cpm`,total_bid_amount_cpm`,total_win_amount_cpm`,win_rate`,wins&precision=4&time_rollup=by_day&order=date&start_date=2019-07-01&end_date=2019-11-30	
WinWaitActive, Save As, , 50000
if ErrorLevel <> 0
{
	MsgBox, WinWait timed out.
	return
}
else
ControlSetText, Edit1, C:\Users\XXXXXX\winlos.csv, Save As
Send, {Enter}
Sleep, 1000
Send, {Left}
Sleep, 1000
Send, {Enter}
Sleep, 1000




;AUD Ind Pixel Report

Run, https://t1.mediamath.com/reporting/v1/std/audience_index_pixel?dimensions=advertiser_id`,pixel_external_id`,pixel_id`,pixel_name`,pixel_tag_type`,pixel_type`,audience_id`,audience_name`,audience_path&filter=organization_id=111111&metrics=matched_users`,audience_index&time_window=last_14_days&time_rollup=all	
WinWaitActive, Save As, , 50000
if ErrorLevel <> 0
{
	MsgBox, WinWait timed out.
	return
}
else
ControlSetText, Edit1, C:\Users\XXXXXX\audindpixrep.csv, Save As
Send, {Enter}
Sleep, 1000
Send, {Left}
Sleep, 1000
Send, {Enter}
Sleep, 1000





Escape::
ExitApp
Return

