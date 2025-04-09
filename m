Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84EE5C369B5
	for <webhook@archiver.kernel.org>; Mon, 14 Apr 2025 11:32:02 +0000 (UTC)
Received: from smtp-outbound8.duck.com (smtp-outbound8.duck.com [20.67.223.12])
 by mx.groups.io with SMTP id smtpd.web10.11706.1744212770975822820
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Apr 2025 08:32:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@duck.com header.s=postal-KpyQVw header.b=njsQXQua;
 spf=pass (domain: duck.com, ip: 20.67.223.12, mailfrom: proffesionaladdress2@duck.com)
References: <DC0C7CC4-DC00-435D-AF68-749C79388DDD.1@smtp-inbound1.duck.com> <6565.1744118334592061080@lists.yoctoproject.org> <4C0F3047-0C25-4038-BA0C-FE81491D89E5.1@smtp-inbound1.duck.com>
Subject: Re: [yocto] warn if a variable is not used
MIME-Version: 1.0
X-Rspamd-Bar: /
X-Rspamd-Report: DMARC_POLICY_ALLOW(-0.5) MANY_INVISIBLE_PARTS(0.05) MIME_GOOD(-0.1) R_DKIM_ALLOW(-0.2) URI_COUNT_ODD(1) R_SPF_ALLOW(-0.2)
X-Rspamd-Score: 0.05
X-Rspamd-Action: no action
To: Clayton Casciato <ccasciato@21sw.us>
Cc: proffesionaladdress2 <proffesionaladdress2@duck.com>,
 yocto at lists yoctoproject org proffesionaladdress2 <yocto@lists.yoctoproject.org>
Received: by smtp-inbound1.duck.com; Wed, 09 Apr 2025 11:32:49 -0400
Message-ID: <869CF666-7B3C-4DB6-BC0B-0230049CF524.1@smtp-inbound1.duck.com>
Date: Wed, 09 Apr 2025 11:32:49 -0400
From: proffesionaladdress2@duck.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=duck.com; h=From:
 Date: Message-ID: Cc: To: Content-Type: MIME-Version: Subject: References;
 q=dns/txt; s=postal-KpyQVw; t=1744212770;
 bh=jzA5paD16Ceygx55p5RlATOsQPRl7KvVhjqonda/xB8=;
 b=njsQXQuaHBTClgeHj3AD5RbkE3JEl/MyZkREwVvh4f7L1ik8He6pd6akah9WWZ7+TkjMK7ATR
 qkl2qLUxa1t+HFP7POz+2F9Y8iQJJw2GGvejAnCA3hLjIfQPpM0KruRd71Y2V41iPv21oQigMYB
 Bdbd0Xuzzg3SBVW8/PW7tMg=
Content-Type: multipart/alternative;
	boundary="=_JDj3ZblQ6+v1ZHEgNWtIZS_="
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Apr 2025 11:32:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65159

--=_JDj3ZblQ6+v1ZHEgNWtIZS_=
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thank you, I wasn't aware about the --recipe option of bitbake-getvar.=20

The goal here is not to silently set to a value but to also send a warning.=
=20

I made it like but it print a lot of warning with BitBake Build Tool Core =
version 2.0.0 (the ":=3D" doesn't expand once in .bb file?), in a =
check_variable.bbclass:=20

# warn_and_set_variable_default function take as parameters, the BitBake =
datastore "d", the variable to check "var" and the value to set if the =
variable "var" is empty.=20
# It shall be set to a variable like: MY_VAR :=3D "${@warn_and_set_variable=
_default(d, 'MY_VAR', "default")}"=20
# to avoid multiple variable expansion according to bitbake =
documentation:=20
# https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-ma=
nual-metadata.html#inline-python-variable-expansion=20
def warn_and_set_variable_default(d, var, defaultvalue):=20
variable_value =3D d.getVar(var)=20
if not variable_value:=20
bb.warn('The variable %s is empty or not defined, it will be set to "%s"' %=
 (var, defaultvalue))=20
return defaultvalue=20
else:=20
return variable_value=20

# fail_if_variable_empty function take as parameters, the BitBake datastore=
 "d", the variable to check "var".=20
# It shall be set to a variable like warn_and_set_variable_default function=
.=20
def fail_if_variable_empty(d, var):=20
variable_value =3D d.getVar(var)=20
if not variable_value:=20
bb.fatal('The variable %s is empty and shall be set' %var)=20
return None=20
else:=20
return variable_value=20




Then in recipe:=20

include classes/check_variable.bbclass=20

# Parse mandatory variables=20
MY_VAR_MANDATORY_PARSED :=3D "${@fail_if_variable_empty(d, =
'MY_VAR_MANDATORY')}"=20

# Parse optional variables=20
MY_VAR_OPTIONAL_PARSED :=3D "${@warn_and_set_variable_default(d, =
'MY_VAR_OPTIONAL', 'default')}"=20


#usage=20
do_install:append() {=20
sed -i "s#@MY_VAR_MANDATORY@#\"${MY_VAR_MANDATORY_PARSED}\"#g" =
${D}${bindir}/myfile.file=20
sed -i "s#@MY_VAR_OPTIONAL@#\"${MY_VAR_OPTIONAL_PARSED}\"#g" =
${D}${bindir}/myfile.file=20
}=20

And in local.conf (to avoid error from bbfatal):=20

MY_VAR_MANDATORY=3D"deadbeef"=20


it will print 14 times for my recipe, like:=20
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"=20
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"=20
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"=20
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"=20
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"=20
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"=20
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"=20
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"=20
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"=20
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"=20
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"=20
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"=20
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"=20
WARNING: The variable MY_VAR_OPTIONAL is empty or not defined, it will be =
set to "default"=20



De: "Clayton Casciato" <ccasciato_at_21sw.us_proffesionaladdress2@duck.=
com>=20
=C3=80: "proffesionaladdress2" <proffesionaladdress2@duck.com>, "yocto at =
lists yoctoproject org proffesionaladdress2" <yocto_at_lists.yoctoproject.=
org_proffesionaladdress2@duck.com>=20
Envoy=C3=A9: Mardi 8 Avril 2025 15:18:54=20
Objet: Re: [yocto] warn if a variable is not used=20

In case you weren't aware, you can explicitly set default values: W ??=3D =
"x" A ?=3D "aval" https://docs.yoctoproject.org/bitbake/2.=
0/bitbake-user-manual/bitbake-user-manual-metadata.html#setting-a-defaul=20=


=09

=09

=09

=09
DuckDuckGo did not detect any trackers. [ https://duckduckgo.=
com/-IAIIzTFfMjhHUPJJpT-egROjaq5duXecWi8_QYYw2KgrYCq8CyKIfbd8C7jYEzviBm9jtT=
q-ynKiLi1BI6Tf447Ot-09ZA70WKKvc8VYd55iREHlhxCWcbhJWnqmrOf8TAqLpw0gSCM-b1qX2=
Qi9wurrhws1ngng9H9-BcqIg3svdO4t7VgT-SadQMtGCo6ptJNRY_imO7Pw | More ]=20

=09
	[ https://duckduckgo.com/-IAIIzTFfMjhHUPJJpT-egROjaq5duXecWi8_QYYw2KgrYCq8=
CyKIfbd8C7jYEzviBm9jtTq-ynKiLi1BI6Tf447Ot-09ZA70WKKvc8VYd55iREHlhxCWcbhJWnq=
mrOf8TAqLpw0gSCM-b1qX2Qi9wurrhws1ngng9H9-BcqIg3svdO4t7VgT-SadQMtGCo6ptJNRY_=
imO7Pw |  Report Spam  ]=20
In case you weren't aware, you can explicitly set default values:=20
W ??=3D "x"=20
A ?=3D "aval"=20
https://docs.yoctoproject.org/bitbake/2.0/bitbake-user-manual/bitbake-user-=
manual-metadata.html#setting-a-default-value=20
--=20
Variables can be queried as to how they are set:=20
$ bitbake-getvar --recipe rpi-u-boot-scr MY_VARIABLE=20
--=20
Also note:=20



The scripts are executed by /bin/sh , which may not be a bash shell but =
might be something such as dash .=20



https://docs.yoctoproject.org/bitbake/2.0/bitbake-user-manual/bitbake-user-=
manual-metadata.html#shell-functions=20



--=_JDj3ZblQ6+v1ZHEgNWtIZS_=
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"font-family: arial, helvetica, =
sans-serif; font-size: 12pt; color: #000000"><div data-marker=3D"__QUOTED_T=
EXT__"><div style=3D"font-family: arial, helvetica, sans-serif; font-size: =
12pt; color: #000000"><div>Thank you, I wasn't aware about the --recipe =
option of bitbake-getvar.</div><br><div>The goal here is not to silently =
set to a value but to also send a warning.</div><br><div>I made it like but=
 it print a lot of warning with BitBake Build Tool Core version 2.0.0 (the =
":=3D" doesn't expand once in .bb file?), in a check_variable.=
bbclass:</div><div><br data-mce-bogus=3D"1"></div><div># =
warn_and_set_variable_default function take as parameters, the BitBake =
datastore "d", the variable to check "var" and the value to set if the =
variable "var" is empty.<br># It shall be set to a variable like: MY_VAR =
:=3D "${@warn_and_set_variable_default(d, 'MY_VAR', "default")}"<br># to =
avoid multiple variable expansion according to bitbake documentation:<br># =
https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manu=
al-metadata.html#inline-python-variable-expansion<br>def =
warn_and_set_variable_default(d, var, defaultvalue):<br>&nbsp;&nbsp;&nbsp; =
variable_value =3D d.getVar(var)<br>&nbsp;&nbsp;&nbsp; if not =
variable_value:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.warn('The =
variable %s is empty or not defined, it will be set to "%s"' % (var, =
defaultvalue))<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return =
defaultvalue<br>&nbsp;&nbsp;&nbsp; else:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; return variable_value<br><br># fail_if_variable_empty function =
take as parameters, the BitBake datastore "d", the variable to check "var".=
<br># It shall be set to a variable like warn_and_set_variable_default =
function.<br>def fail_if_variable_empty(d, var):<br>&nbsp;&nbsp;&nbsp; =
variable_value =3D d.getVar(var)<br>&nbsp;&nbsp;&nbsp; if not =
variable_value:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.fatal('The=
 variable %s is empty and shall be set' %var)<br>&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; return None<br>&nbsp;&nbsp;&nbsp; else:<br>&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; return variable_value<br><br =
data-mce-bogus=3D"1"></div><div><br data-mce-bogus=3D"1"></div><div><br =
data-mce-bogus=3D"1"></div><div><br data-mce-bogus=3D"1"></div></div><div =
style=3D"font-family: arial, helvetica, sans-serif; font-size: 12pt; color:=
 #000000">Then in recipe:</div><div style=3D"font-family: arial, helvetica,=
 sans-serif; font-size: 12pt; color: #000000"><br>include =
classes/check_variable.bbclass<br></div><div style=3D"font-family: arial, =
helvetica, sans-serif; font-size: 12pt; color: #000000"><br =
data-mce-bogus=3D"1"></div><div style=3D"font-family: arial, helvetica, =
sans-serif; font-size: 12pt; color: #000000"># Parse mandatory =
variables<br>MY_VAR_MANDATORY_PARSED :=3D "${@fail_if_variable_empty(d, =
'MY_VAR_MANDATORY')}"<br><br># Parse optional variables<br>MY_VAR_OPTIONAL_=
PARSED :=3D "${@warn_and_set_variable_default(d, 'MY_VAR_OPTIONAL', =
'default')}"<br></div><div style=3D"font-family: arial, helvetica, =
sans-serif; font-size: 12pt; color: #000000"><br data-mce-bogus=3D"1"></div=
><div style=3D"font-family: arial, helvetica, sans-serif; font-size: 12pt; =
color: #000000"><br data-mce-bogus=3D"1"></div><div style=3D"font-family: =
arial, helvetica, sans-serif; font-size: 12pt; color: =
#000000">#usage</div><div style=3D"font-family: arial, helvetica, =
sans-serif; font-size: 12pt; color: #000000">do_install:append() =
{</div><div style=3D"font-family: arial, helvetica, sans-serif; font-size: =
12pt; color: #000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sed -i =
"s#@MY_VAR_MANDATORY@#\"${MY_VAR_MANDATORY_PARSED}\"#g" =
${D}${bindir}/myfile.file</div><div style=3D"font-family: arial, helvetica,=
 sans-serif; font-size: 12pt; color: #000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; sed -i "s#@MY_VAR_OPTIONAL@#\"${MY_VAR_OPTIONAL_PARSED}\"#g" =
${D}${bindir}/myfile.file<br></div><div style=3D"font-family: arial, =
helvetica, sans-serif; font-size: 12pt; color: #000000">}</div><div =
style=3D"font-family: arial, helvetica, sans-serif; font-size: 12pt; color:=
 #000000"><br data-mce-bogus=3D"1"></div><div style=3D"font-family: arial, =
helvetica, sans-serif; font-size: 12pt; color: #000000">And in local.conf =
(to avoid error from bbfatal):</div><div style=3D"font-family: arial, =
helvetica, sans-serif; font-size: 12pt; color: #000000"><div><br =
data-mce-bogus=3D"1"></div><div>MY_VAR_MANDATORY=3D"deadbeef"</div><div><br=
 data-mce-bogus=3D"1"></div><div><br data-mce-bogus=3D"1"></div><div>it =
will print 14 times for my recipe, like:</div><div>WARNING: The variable =
MY_VAR_OPTIONAL is empty or not defined, it will be set to =
"default"<br>WARNING: The variable MY_VAR_OPTIONAL is empty or not defined,=
 it will be set to "default"<br>WARNING: The variable MY_VAR_OPTIONAL is =
empty or not defined, it will be set to "default"<br>WARNING: The variable =
MY_VAR_OPTIONAL is empty or not defined, it will be set to =
"default"<br>WARNING: The variable MY_VAR_OPTIONAL is empty or not defined,=
 it will be set to "default"<br>WARNING: The variable MY_VAR_OPTIONAL is =
empty or not defined, it will be set to "default"<br>WARNING: The variable =
MY_VAR_OPTIONAL is empty or not defined, it will be set to =
"default"<br>WARNING: The variable MY_VAR_OPTIONAL is empty or not defined,=
 it will be set to "default"<br>WARNING: The variable MY_VAR_OPTIONAL is =
empty or not defined, it will be set to "default"<br>WARNING: The variable =
MY_VAR_OPTIONAL is empty or not defined, it will be set to =
"default"<br>WARNING: The variable MY_VAR_OPTIONAL is empty or not defined,=
 it will be set to "default"<br>WARNING: The variable MY_VAR_OPTIONAL is =
empty or not defined, it will be set to "default"<br>WARNING: The variable =
MY_VAR_OPTIONAL is empty or not defined, it will be set to =
"default"<br>WARNING: The variable MY_VAR_OPTIONAL is empty or not defined,=
 it will be set to "default"<br><br data-mce-bogus=3D"1"></div><div><br =
data-mce-bogus=3D"1"></div><hr id=3D"zwchr"><div><b>De: </b>"Clayton =
Casciato" &lt;ccasciato_at_21sw.us_proffesionaladdress2@duck.=
com&gt;<br><b>&#xC0;: </b>"proffesionaladdress2" &lt;proffesionaladdress2@d=
uck.com&gt;, "yocto at lists yoctoproject org proffesionaladdress2" =
&lt;yocto_at_lists.yoctoproject.org_proffesionaladdress2@duck.=
com&gt;<br><b>Envoy&#xE9;: </b>Mardi 8 Avril 2025 15:18:54<br><b>Objet: =
</b>Re: [yocto] warn if a variable is not used<br></div><br><div><div>
</div><div>
<div style=3D"font-family: arial, helvetica, sans-serif; =
font-size: 12pt; color: #000000;">
<div><span style=3D"color: #333333; =
font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', =
'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji'=
, 'Segoe UI Symbol', 'Noto Color Emoji';">In case you weren't aware, you =
can explicitly set default values:</span></div>
</div>
</div>
<div><span style=3D"font-family: 'courier new', courier;">W ??=3D =
"x"</span></div>
<div><span style=3D"font-family: 'courier new', =
courier;">A ?=3D "aval"</span></div>
<div>&nbsp;</div>
<div>https://docs.yoctoproject.org/bitbake/2.0/bitbake-user-manual/bitbake-=
user-manual-metadata.html#setting-a-default-value</div>
<div>&nbsp;</div>
<div>--</div>
<div>&nbsp;</div>
<div>Variables can be queried as to how =
they are set:</div>
<div><span style=3D"font-family: 'courier new', =
courier;">$ bitbake-getvar --recipe rpi-u-boot-scr MY_VARIABLE</span></div>
<div>&nbsp;</div>
<div>--</div>
<div>&nbsp;</div>
<div><span =
style=3D"font-family: arial, helvetica, sans-serif;">Also =
note:</span></div>
<blockquote>
<div><span style=3D"font-family: arial, =
helvetica, sans-serif;"><span style=3D"color: #333333; font-family: Verdana=
, Sans, sans-serif; font-size: 16px; font-style: normal; =
font-variant-ligatures: normal; font-variant-caps: normal; font-weight: =
400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: =
0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; white-space: normal; background-color: =
#fcfcfc; text-decoration-thickness: initial; text-decoration-style: =
initial; text-decoration-color: initial; display: inline !important; float:=
 none;">The scripts are executed by<span>&nbsp;</span></span><code =
class=3D"docutils literal notranslate" style=3D"box-sizing: border-box; =
font-family: SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono', =
'Courier New', Courier, monospace; font-size: 13.6px; white-space: normal; =
max-width: 100%; background-image: inherit; background-position: inherit; =
background-size: inherit; background-repeat: inherit; =
background-attachment: inherit; background-origin: inherit; =
background-clip: inherit; background-color: #fcfcfc; border: none; padding:=
 unset; color: #333333; overflow-x: auto; font-style: normal; =
font-variant-ligatures: normal; font-variant-caps: normal; font-weight: =
400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: =
0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration-thickness: initial; =
text-decoration-style: initial; text-decoration-color: initial;"><span =
class=3D"pre" style=3D"box-sizing: border-box; font-size: medium; =
font-family: Courier, monospace;">/bin/sh</span></code><span =
style=3D"color: #333333; font-family: Verdana, Sans, sans-serif; font-size:=
 16px; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; =
widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: =
normal; background-color: #fcfcfc; text-decoration-thickness: initial; =
text-decoration-style: initial; text-decoration-color: initial; display: =
inline !important; float: none;">, which may not be a bash shell but might =
be something such as<span>&nbsp;</span></span><code class=3D"docutils =
literal notranslate" style=3D"box-sizing: border-box; font-family: =
SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier New', =
Courier, monospace; font-size: 13.6px; white-space: normal; max-width: =
100%; background-image: inherit; background-position: inherit; =
background-size: inherit; background-repeat: inherit; =
background-attachment: inherit; background-origin: inherit; =
background-clip: inherit; background-color: #fcfcfc; border: none; padding:=
 unset; color: #333333; overflow-x: auto; font-style: normal; =
font-variant-ligatures: normal; font-variant-caps: normal; font-weight: =
400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: =
0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration-thickness: initial; =
text-decoration-style: initial; text-decoration-color: initial;"><span =
class=3D"pre" style=3D"box-sizing: border-box; font-size: medium; =
font-family: Courier, monospace;">dash</span></code><span style=3D"color: =
#333333; font-family: Verdana, Sans, sans-serif; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: =
0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color:=
 #fcfcfc; text-decoration-thickness: initial; text-decoration-style: =
initial; text-decoration-color: initial; display: inline !important; float:=
 none;">.</span></span></div>
</blockquote>
<div>https://docs.yoctoproject.=
org/bitbake/2.0/bitbake-user-manual/bitbake-user-manual-metadata.=
html#shell-functions</div></div></div><br></div></div></body></html>

--=_JDj3ZblQ6+v1ZHEgNWtIZS_=--

