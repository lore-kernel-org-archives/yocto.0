Return-Path: <vishal.rana118@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55473C433F5
	for <webhook@archiver.kernel.org>; Wed,  1 Dec 2021 06:30:04 +0000 (UTC)
Subject: swupdate update failure.<error logs> #swupdate
To: yocto@lists.yoctoproject.org
From: vishal.rana118@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (49.207.214.161)
X-Originating-Platform: Windows Chrome 96
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 30 Nov 2021 22:30:02 -0800
Message-ID: <1Ynh.1638340202988311835.OOEz@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="3EzSRgO4REe0YjivKDcD"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Dec 2021 06:30:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55454

--3EzSRgO4REe0YjivKDcD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

Recently, I am able to integrate SWUPDATE on my Linux target.
After building successfully, I tried to do a local update using SD_CARD.

Getting below error after doing the update. Please guide me on how to resol=
ve=C2=A0this.

////////////////////////////// ////////////////////////////// /////////////=
///////////////// ////////////////////////////// /////////////
////////////////////////////// ////////////////////////////// /////////////=
///////////////// ////////////////////////////// ////////////////
Starting swupdate ...
dd: writing to '/dev/fb0': No space left on device
8001+0 records in
8000+0 records out
4096000 bytes (4.1 MB, 3.9 MiB) copied, 0.0848937 s, 48.2 MB/s
/etc/rc5.d/S99MyBoard: line 5: /HelloWorld: No such file or directory
Swupdate v2018.3.0

Licensed under GPLv2. See source distribution for detailed copyright notice=
s.

[TRACE] : SWUPDATE running : =C2=A0[start_swupdate_subprocess] : Started we=
bserver with pid 581 and fd 4
[TRACE] : SWUPDATE running : =C2=A0[start_swupdate_subprocess] : Started su=
ricatta with pid 582 and fd 5
Running on imx6s-comgx-MyBoard Revision 1.0
Registered handlers:
archive
tar
raw
rawfile
lua
shellscript
preinstall
postinstall
remote
uboot
bootloader
[TRACE] : SWUPDATE running : =C2=A0[listener_create] : creating socket at /=
tmp/swupdateprog
[TRACE] : SWUPDATE running : =C2=A0[network_initializer] : Main loop Daemon
[TRACE] : SWUPDATE running : =C2=A0[listener_create] : creating socket at /=
tmp/sockinstctrl
[TRACE] : SWUPDATE running : =C2=A0[suricatta_configdata_ settings] : Ident=
ify for configData: board --> imx6s-comgx-MyBoard

Mongoose web server version 6.11 with pid 581 started on port(s) 8080 with =
web root [/www] and API v2
*Cannot parse config file '/etc/fw_env.config': No such file or directory*
*[ERROR] : SWUPDATE failed [0] ERROR bootloader/uboot.c : bootloader_env_ge=
t : 93 : Error: environment not initialized, No such file or directory*

[INFO ] : SWUPDATE running : =C2=A0[read_state] : Key 'ustate' not found in=
 Bootloader's environment.

[TRACE] : SWUPDATE running : =C2=A0[get_state] : Read state=3D4 from persis=
tent storage.

[DEBUG] : SWUPDATE running : =C2=A0[server_handle_initial_state] : State is=
 STATE_OK/STATE_NOT_AVAILABLE, nothing to report to server.

[TRACE] : SWUPDATE running : =C2=A0[start_suricatta] : Server initialized, =
entering suricatta main loop.

[DEBUG] : SWUPDATE running : =C2=A0[server_get_device_info] : Getting infor=
mation for device 'imx6s-comgx-MyBoard'

[DEBUG] : SWUPDATE running : =C2=A0[channel_set_options] : cURL's low downl=
oad speed timeout is disabled, this is most probably not what you want. Ada=
pted it to 300s instead.

[DEBUG] : SWUPDATE running : =C2=A0[channel_get] : Trying to GET http://var=
update:8080/default/ controller/v1/imx6s-comgx- MyBoard ( http://varupdate:=
8080/default/controller/v1/imx6s-comgx-MyBoard )
Trying to connect to SWUpdate...
*Connected to SWUpdate via /tmp/swupdateprog
* Could not resolve host: varupdate
* Closing connection 0
[ERROR] : SWUPDATE failed [0] ERROR corelib/channel_curl.c : channel_get : =
955 : Channel get operation failed (6): 'Couldn't resolve host name'*

[TRACE] : SWUPDATE running : =C2=A0[server_send_target_data] : KEYVALUE=3D =
"board": "imx6s-comgx-MyBoard" board imx6s-comgx-MyBoard
[TRACE] : SWUPDATE running : =C2=A0[server_send_target_data] : CONFIGDATA=
=3D "board": "imx6s-comgx-MyBoard"
[TRACE] : SWUPDATE running : =C2=A0[server_send_target_data] : URL=3D http:=
//varupdate:8080/ default/controller/v1/imx6s- comgx-MyBoard/configData ( h=
ttp://varupdate:8080/default/controller/v1/imx6s-comgx-MyBoard/configData )=
 JSON=3D{ "id": "", "time": "20211129T102651", "status": { "result": { "fin=
ished": "success" }, "execution": "closed", "details" : [ "" ] }, "data" : =
{ =C2=A0"board": "imx6s-comgx-MyBoard" } }
[DEBUG] : SWUPDATE running : =C2=A0[channel_set_options] : cURL's low downl=
oad speed timeout is disabled, this is most probably not what you want. Ada=
pted it to 300s instead.

* Could not resolve host: varupdate
* Closing connection 1
*[ERROR] : SWUPDATE failed [0] ERROR corelib/channel_curl.c : channel_put_m=
ethod : 659 : Channel put operation failed (6): 'Couldn't resolve host name=
'*

[DEBUG] : SWUPDATE running : =C2=A0[suricatta_wait] : Sleeping for 3600 sec=
onds.

////////////////////////////// ////////////////////////////// /////////////=
///////////////// ////////////////////////////// //////////////////////////=
//// ////////////////////////////// ////////////////////////////// ////////=
////////////////////// ///////
////////////////////////////// ////////////////////////////// /////////////=
///////////////// ////////////////////////////// //////////////////////////=
//// ////////////////////////////// ////////////////////////////// ////////=
////////////////////// ////////

Thanks in advance .

--3EzSRgO4REe0YjivKDcD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">Hi Team,</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">Recently, I am able to integrate SWUPDATE on my Linux targ=
et.</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">After building successfully, I tried to do a local update =
using SD_CARD.</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">Getting below error after doing the update. Please guide m=
e on how to resolve&nbsp;this.</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">//////////////////////////////<wbr />/////////////////////=
/////////<wbr />//////////////////////////////<wbr />//////////////////////=
////////<wbr />/////////////</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">//////////////////////////////<wbr />/////////////////////=
/////////<wbr />//////////////////////////////<wbr />//////////////////////=
////////<wbr />////////////////</div>
<span style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">Starting swupdate ...</span><br style=3D"color: #222222; =
font-family: Arial, Helvetica, sans-serif; font-size: small;" /><span style=
=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: s=
mall;">dd: writing to '/dev/fb0': No space left on device</span><br style=
=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: s=
mall;" /><span style=3D"color: #222222; font-family: Arial, Helvetica, sans=
-serif; font-size: small;">8001+0 records in</span><br style=3D"color: #222=
222; font-family: Arial, Helvetica, sans-serif; font-size: small;" /><span =
style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-si=
ze: small;">8000+0 records out</span><br style=3D"color: #222222; font-fami=
ly: Arial, Helvetica, sans-serif; font-size: small;" /><span style=3D"color=
: #222222; font-family: Arial, Helvetica, sans-serif; font-size: small;">40=
96000 bytes (4.1 MB, 3.9 MiB) copied, 0.0848937 s, 48.2 MB/s</span><br styl=
e=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: =
small;" /><span style=3D"color: #222222; font-family: Arial, Helvetica, san=
s-serif; font-size: small;">/etc/rc5.d/S99MyBoard: line 5: /HelloWorld: No =
such file or directory</span><br style=3D"color: #222222; font-family: Aria=
l, Helvetica, sans-serif; font-size: small;" /><span style=3D"color: #22222=
2; font-family: Arial, Helvetica, sans-serif; font-size: small;">Swupdate v=
2018.3.0</span><br style=3D"color: #222222; font-family: Arial, Helvetica, =
sans-serif; font-size: small;" /><br style=3D"color: #222222; font-family: =
Arial, Helvetica, sans-serif; font-size: small;" /><span style=3D"color: #2=
22222; font-family: Arial, Helvetica, sans-serif; font-size: small;">Licens=
ed under GPLv2. See source distribution for detailed copyright notices.</sp=
an><br style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; =
font-size: small;" /><br style=3D"color: #222222; font-family: Arial, Helve=
tica, sans-serif; font-size: small;" /><span style=3D"color: #222222; font-=
family: Arial, Helvetica, sans-serif; font-size: small;">[TRACE] : SWUPDATE=
 running : &nbsp;[start_swupdate_subprocess] : Started webserver with pid 5=
81 and fd 4</span><br style=3D"color: #222222; font-family: Arial, Helvetic=
a, sans-serif; font-size: small;" /><span style=3D"color: #222222; font-fam=
ily: Arial, Helvetica, sans-serif; font-size: small;">[TRACE] : SWUPDATE ru=
nning : &nbsp;[start_swupdate_subprocess] : Started suricatta with pid 582 =
and fd 5</span><br style=3D"color: #222222; font-family: Arial, Helvetica, =
sans-serif; font-size: small;" /><span style=3D"color: #222222; font-family=
: Arial, Helvetica, sans-serif; font-size: small;">Running on imx6s-comgx-M=
yBoard Revision 1.0</span><br style=3D"color: #222222; font-family: Arial, =
Helvetica, sans-serif; font-size: small;" /><span style=3D"color: #222222; =
font-family: Arial, Helvetica, sans-serif; font-size: small;">Registered ha=
ndlers:</span><br style=3D"color: #222222; font-family: Arial, Helvetica, s=
ans-serif; font-size: small;" /><span style=3D"color: #222222; font-family:=
 Arial, Helvetica, sans-serif; font-size: small;">&nbsp; &nbsp; &nbsp; &nbs=
p; archive</span><br style=3D"color: #222222; font-family: Arial, Helvetica=
, sans-serif; font-size: small;" /><span style=3D"color: #222222; font-fami=
ly: Arial, Helvetica, sans-serif; font-size: small;">&nbsp; &nbsp; &nbsp; &=
nbsp; tar</span><br style=3D"color: #222222; font-family: Arial, Helvetica,=
 sans-serif; font-size: small;" /><span style=3D"color: #222222; font-famil=
y: Arial, Helvetica, sans-serif; font-size: small;">&nbsp; &nbsp; &nbsp; &n=
bsp; raw</span><br style=3D"color: #222222; font-family: Arial, Helvetica, =
sans-serif; font-size: small;" /><span style=3D"color: #222222; font-family=
: Arial, Helvetica, sans-serif; font-size: small;">&nbsp; &nbsp; &nbsp; &nb=
sp; rawfile</span><br style=3D"color: #222222; font-family: Arial, Helvetic=
a, sans-serif; font-size: small;" /><span style=3D"color: #222222; font-fam=
ily: Arial, Helvetica, sans-serif; font-size: small;">&nbsp; &nbsp; &nbsp; =
&nbsp; lua</span><br style=3D"color: #222222; font-family: Arial, Helvetica=
, sans-serif; font-size: small;" /><span style=3D"color: #222222; font-fami=
ly: Arial, Helvetica, sans-serif; font-size: small;">&nbsp; &nbsp; &nbsp; &=
nbsp; shellscript</span><br style=3D"color: #222222; font-family: Arial, He=
lvetica, sans-serif; font-size: small;" /><span style=3D"color: #222222; fo=
nt-family: Arial, Helvetica, sans-serif; font-size: small;">&nbsp; &nbsp; &=
nbsp; &nbsp; preinstall</span><br style=3D"color: #222222; font-family: Ari=
al, Helvetica, sans-serif; font-size: small;" /><span style=3D"color: #2222=
22; font-family: Arial, Helvetica, sans-serif; font-size: small;">&nbsp; &n=
bsp; &nbsp; &nbsp; postinstall</span><br style=3D"color: #222222; font-fami=
ly: Arial, Helvetica, sans-serif; font-size: small;" /><span style=3D"color=
: #222222; font-family: Arial, Helvetica, sans-serif; font-size: small;">&n=
bsp; &nbsp; &nbsp; &nbsp; remote</span><br style=3D"color: #222222; font-fa=
mily: Arial, Helvetica, sans-serif; font-size: small;" /><span style=3D"col=
or: #222222; font-family: Arial, Helvetica, sans-serif; font-size: small;">=
&nbsp; &nbsp; &nbsp; &nbsp; uboot</span><br style=3D"color: #222222; font-f=
amily: Arial, Helvetica, sans-serif; font-size: small;" /><span style=3D"co=
lor: #222222; font-family: Arial, Helvetica, sans-serif; font-size: small;"=
>&nbsp; &nbsp; &nbsp; &nbsp; bootloader</span><br style=3D"color: #222222; =
font-family: Arial, Helvetica, sans-serif; font-size: small;" /><span style=
=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: s=
mall;">[TRACE] : SWUPDATE running : &nbsp;[listener_create] : creating sock=
et at /tmp/swupdateprog</span><br style=3D"color: #222222; font-family: Ari=
al, Helvetica, sans-serif; font-size: small;" /><span style=3D"color: #2222=
22; font-family: Arial, Helvetica, sans-serif; font-size: small;">[TRACE] :=
 SWUPDATE running : &nbsp;[network_initializer] : Main loop Daemon</span><b=
r style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-=
size: small;" /><span style=3D"color: #222222; font-family: Arial, Helvetic=
a, sans-serif; font-size: small;">[TRACE] : SWUPDATE running : &nbsp;[liste=
ner_create] : creating socket at /tmp/sockinstctrl</span><br style=3D"color=
: #222222; font-family: Arial, Helvetica, sans-serif; font-size: small;" />=
<span style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">[TRACE] : SWUPDATE running : &nbsp;[suricatta_configdata_=
</span><wbr style=3D"color: #222222; font-family: Arial, Helvetica, sans-se=
rif; font-size: small;" /><span style=3D"color: #222222; font-family: Arial=
, Helvetica, sans-serif; font-size: small;">settings] : Identify for config=
Data: board --&gt; imx6s-comgx-MyBoard</span><br style=3D"color: #222222; f=
ont-family: Arial, Helvetica, sans-serif; font-size: small;" /><br style=3D=
"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: smal=
l;" /><span style=3D"color: #222222; font-family: Arial, Helvetica, sans-se=
rif; font-size: small;">Mongoose web server version 6.11 with pid 581 start=
ed on port(s) 8080 with web root [/www] and API v2</span><br style=3D"color=
: #222222; font-family: Arial, Helvetica, sans-serif; font-size: small;" />=
<strong style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif;=
 font-size: small;">Cannot parse config file '/etc/fw_env.config': No such =
file or directory</strong><br style=3D"color: #222222; font-family: Arial, =
Helvetica, sans-serif; font-size: small;" /><strong style=3D"color: #222222=
; font-family: Arial, Helvetica, sans-serif; font-size: small;">[ERROR] : S=
WUPDATE failed [0] ERROR bootloader/uboot.c : bootloader_env_get : 93 : Err=
or: environment not initialized, No such file or directory</strong><br styl=
e=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: =
small;" /><br style=3D"color: #222222; font-family: Arial, Helvetica, sans-=
serif; font-size: small;" /><span style=3D"color: #222222; font-family: Ari=
al, Helvetica, sans-serif; font-size: small;">[INFO ] : SWUPDATE running : =
&nbsp;[read_state] : Key 'ustate' not found in Bootloader's environment.</s=
pan><br style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif;=
 font-size: small;" /><br style=3D"color: #222222; font-family: Arial, Helv=
etica, sans-serif; font-size: small;" /><span style=3D"color: #222222; font=
-family: Arial, Helvetica, sans-serif; font-size: small;">[TRACE] : SWUPDAT=
E running : &nbsp;[get_state] : Read state=3D4 from persistent storage.</sp=
an><br style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; =
font-size: small;" /><br style=3D"color: #222222; font-family: Arial, Helve=
tica, sans-serif; font-size: small;" /><span style=3D"color: #222222; font-=
family: Arial, Helvetica, sans-serif; font-size: small;">[DEBUG] : SWUPDATE=
 running : &nbsp;[server_handle_initial_state] : State is STATE_OK/STATE_NO=
T_AVAILABLE, nothing to report to server.</span><br style=3D"color: #222222=
; font-family: Arial, Helvetica, sans-serif; font-size: small;" /><br style=
=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: s=
mall;" /><span style=3D"color: #222222; font-family: Arial, Helvetica, sans=
-serif; font-size: small;">[TRACE] : SWUPDATE running : &nbsp;[start_surica=
tta] : Server initialized, entering suricatta main loop.</span><br style=3D=
"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: smal=
l;" /><br style=3D"color: #222222; font-family: Arial, Helvetica, sans-seri=
f; font-size: small;" /><span style=3D"color: #222222; font-family: Arial, =
Helvetica, sans-serif; font-size: small;">[DEBUG] : SWUPDATE running : &nbs=
p;[server_get_device_info] : Getting information for device 'imx6s-comgx-My=
Board'</span><br style=3D"color: #222222; font-family: Arial, Helvetica, sa=
ns-serif; font-size: small;" /><br style=3D"color: #222222; font-family: Ar=
ial, Helvetica, sans-serif; font-size: small;" /><span style=3D"color: #222=
222; font-family: Arial, Helvetica, sans-serif; font-size: small;">[DEBUG] =
: SWUPDATE running : &nbsp;[channel_set_options] : cURL's low download spee=
d timeout is disabled, this is most probably not what you want. Adapted it =
to 300s instead.</span><br style=3D"color: #222222; font-family: Arial, Hel=
vetica, sans-serif; font-size: small;" /><br style=3D"color: #222222; font-=
family: Arial, Helvetica, sans-serif; font-size: small;" /><span style=3D"c=
olor: #222222; font-family: Arial, Helvetica, sans-serif; font-size: small;=
">[DEBUG] : SWUPDATE running : &nbsp;[channel_get] : Trying to GET&nbsp;</s=
pan><a style=3D"color: #1155cc; font-family: Arial, Helvetica, sans-serif; =
font-size: small; background-color: #ffffff;" href=3D"http://varupdate:8080=
/default/controller/v1/imx6s-comgx-MyBoard" target=3D"_blank" rel=3D"noopen=
er" data-saferedirecturl=3D"https://www.google.com/url?q=3Dhttp://varupdate=
:8080/default/controller/v1/imx6s-comgx-MyBoard&amp;source=3Dgmail&amp;ust=
=3D1638425699270000&amp;usg=3DAOvVaw0gb-ZTMut5DF0NrzE5X34x">http://varupdat=
e:8080/default/<wbr />controller/v1/imx6s-comgx-<wbr />MyBoard</a><br style=
=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: s=
mall;" /><span style=3D"color: #222222; font-family: Arial, Helvetica, sans=
-serif; font-size: small;">Trying to connect to SWUpdate...</span><br style=
=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: s=
mall;" /><strong style=3D"color: #222222; font-family: Arial, Helvetica, sa=
ns-serif; font-size: small;">Connected to SWUpdate via /tmp/swupdateprog<br=
 />* Could not resolve host: varupdate<br />* Closing connection 0<br />[ER=
ROR] : SWUPDATE failed [0] ERROR corelib/channel_curl.c : channel_get : 955=
 : Channel get operation failed (6): 'Couldn't resolve host name'</strong><=
br style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font=
-size: small;" /><br style=3D"color: #222222; font-family: Arial, Helvetica=
, sans-serif; font-size: small;" /><span style=3D"color: #222222; font-fami=
ly: Arial, Helvetica, sans-serif; font-size: small;">[TRACE] : SWUPDATE run=
ning : &nbsp;[server_send_target_data] : KEYVALUE=3D "board": "imx6s-comgx-=
MyBoard" board imx6s-comgx-MyBoard</span><br style=3D"color: #222222; font-=
family: Arial, Helvetica, sans-serif; font-size: small;" /><span style=3D"c=
olor: #222222; font-family: Arial, Helvetica, sans-serif; font-size: small;=
">[TRACE] : SWUPDATE running : &nbsp;[server_send_target_data] : CONFIGDATA=
=3D "board": "imx6s-comgx-MyBoard"</span><br style=3D"color: #222222; font-=
family: Arial, Helvetica, sans-serif; font-size: small;" /><span style=3D"c=
olor: #222222; font-family: Arial, Helvetica, sans-serif; font-size: small;=
">[TRACE] : SWUPDATE running : &nbsp;[server_send_target_data] : URL=3D</sp=
an><a style=3D"color: #1155cc; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small; background-color: #ffffff;" href=3D"http://varupdate:8080/=
default/controller/v1/imx6s-comgx-MyBoard/configData" target=3D"_blank" rel=
=3D"noopener" data-saferedirecturl=3D"https://www.google.com/url?q=3Dhttp:/=
/varupdate:8080/default/controller/v1/imx6s-comgx-MyBoard/configData&amp;so=
urce=3Dgmail&amp;ust=3D1638425699271000&amp;usg=3DAOvVaw2Vo8COjloVhl43VkKYJ=
1Sn">http://varupdate:8080/<wbr />default/controller/v1/imx6s-<wbr />comgx-=
MyBoard/configData</a><span style=3D"color: #222222; font-family: Arial, He=
lvetica, sans-serif; font-size: small;">&nbsp;JSON=3D{ "id": "", "time": "2=
0211129T102651", "status": { "result": { "finished": "success" }, "executio=
n": "closed", "details" : [ "" ] }, "data" : { &nbsp;"board": "imx6s-comgx-=
MyBoard" } }</span><br style=3D"color: #222222; font-family: Arial, Helveti=
ca, sans-serif; font-size: small;" /><span style=3D"color: #222222; font-fa=
mily: Arial, Helvetica, sans-serif; font-size: small;">[DEBUG] : SWUPDATE r=
unning : &nbsp;[channel_set_options] : cURL's low download speed timeout is=
 disabled, this is most probably not what you want. Adapted it to 300s inst=
ead.</span><br style=3D"color: #222222; font-family: Arial, Helvetica, sans=
-serif; font-size: small;" /><br style=3D"color: #222222; font-family: Aria=
l, Helvetica, sans-serif; font-size: small;" /><span style=3D"color: #22222=
2; font-family: Arial, Helvetica, sans-serif; font-size: small;">* Could no=
t resolve host: varupdate</span><br style=3D"color: #222222; font-family: A=
rial, Helvetica, sans-serif; font-size: small;" /><span style=3D"color: #22=
2222; font-family: Arial, Helvetica, sans-serif; font-size: small;">* Closi=
ng connection 1</span><br style=3D"color: #222222; font-family: Arial, Helv=
etica, sans-serif; font-size: small;" /><strong style=3D"color: #222222; fo=
nt-family: Arial, Helvetica, sans-serif; font-size: small;">[ERROR] : SWUPD=
ATE failed [0] ERROR corelib/channel_curl.c : channel_put_method : 659 : Ch=
annel put operation failed (6): 'Couldn't resolve host name'</strong><br st=
yle=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; font-size=
: small;" /><br style=3D"color: #222222; font-family: Arial, Helvetica, san=
s-serif; font-size: small;" /><span style=3D"color: #222222; font-family: A=
rial, Helvetica, sans-serif; font-size: small;">[DEBUG] : SWUPDATE running =
: &nbsp;[suricatta_wait] : Sleeping for 3600 seconds.</span>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">//////////////////////////////<wbr />/////////////////////=
/////////<wbr />//////////////////////////////<wbr />//////////////////////=
////////<wbr />//////////////////////////////<wbr />///////////////////////=
///////<wbr />//////////////////////////////<wbr />////////////////////////=
//////<wbr />///////</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">//////////////////////////////<wbr />/////////////////////=
/////////<wbr />//////////////////////////////<wbr />//////////////////////=
////////<wbr />//////////////////////////////<wbr />///////////////////////=
///////<wbr />//////////////////////////////<wbr />////////////////////////=
//////<wbr />////////</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">Thanks in advance .</div>

--3EzSRgO4REe0YjivKDcD--

