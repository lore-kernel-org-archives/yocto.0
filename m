Return-Path: <vipin.jn@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F182E00AAA; Wed,  1 Jul 2015 23:24:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MANY_SPAN_IN_TEXT, RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vipin.jn[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.3 MANY_SPAN_IN_TEXT Many <SPAN> tags embedded within text
Received: from mail-yk0-f177.google.com (mail-yk0-f177.google.com
	[209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B49F3E00A7E
	for <yocto@yoctoproject.org>; Wed,  1 Jul 2015 23:24:36 -0700 (PDT)
Received: by ykfy125 with SMTP id y125so60022212ykf.1
	for <yocto@yoctoproject.org>; Wed, 01 Jul 2015 23:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=2b02x/AzaWa5DrhsEp7a7/AiqXqWzTou4ZGs2jTMJfc=;
	b=B19U/d4vk10/nWLqKWbJVk8QutWQvXVlZtTOylVWyJv5PhWHNBqtt4HSmJxyK+H5/G
	oH/KAbNmCg4Cj6P5ZjvyYHs7iri6YXxmGdspcLbyhPftEA6Y/c6H1wkKAHKbRo7IYbON
	6OkmEkuAv7cry7RCmlMvPgE1HlVicmjnd14wsqv9zCJUMBHiPlilINVax0Juukr37orW
	q+o47eHLPO0iH52xRDwHCAvelvsoQESnxUEF34m9aUl3wZFqpUeAsWhjYCSS0m0SLUet
	/AXn9NJQ1XnNqalJVBXbKUrodTwibGcgSVqkjWsPxG36wcL2zDnr98EHdvbw2s84NKOb
	pnKw==
MIME-Version: 1.0
X-Received: by 10.170.97.9 with SMTP id o9mr36414025yka.84.1435818275516; Wed,
	01 Jul 2015 23:24:35 -0700 (PDT)
Received: by 10.13.240.65 with HTTP; Wed, 1 Jul 2015 23:24:35 -0700 (PDT)
In-Reply-To: <559418F1.1060704@linux.intel.com>
References: <CAFYg0UpeehEy41ethe90thM+hL3EzkPZWcuKJ_3OS2hN4kuESQ@mail.gmail.com>
	<CAFYg0Uq1yqubKPyn2r36h1xXRLTVQvzCvx=hYO3FvGpJzr1pfQ@mail.gmail.com>
	<559418F1.1060704@linux.intel.com>
Date: Thu, 2 Jul 2015 11:54:35 +0530
Message-ID: <CAFYg0Uqa2OyAFZacCtX50YewddO9ZgfwE=HKnYyhQzUcArZ9yw@mail.gmail.com>
From: Vipin Nair <vipin.jn@gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: With my layer, Systemd not invoking my application at startup
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 02 Jul 2015 06:24:39 -0000
Content-Type: multipart/alternative; boundary=001a113b487446390c0519de7e0a

--001a113b487446390c0519de7e0a
Content-Type: text/plain; charset=UTF-8

Thanks a lot Saul for your valuable inputs on my problem.

I have tried inheriting from the useradd.bbclass and the USER add works
with both approach i.e by inheriting from useradd.bb class or manually
calling useradd.

But my main problem 'wherein the systemd does not invoke my service during
first boot ' is not getting resolved.

I have to run the pkg_posinst on the board, for the following two reasons :
 ---- I have to change the file ownership to the newly created user. If I
try to do this on board, it fails
----- I have to run some configuration scripts,which is required for my
service to startup. But this configuration script needs to be run only once
per installation, and so I don't want
to put is in the systemd unitfile.


Here is the brief of my recipe file( sorry, but I can not share the whole
recipe file)
------------------------------------------------------------------------------------------------------------------

DEPENDS += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd',
'systemd-systemctl-native', '', d)}"


do_install() {
------------
------------
#if systemd configured
install -m 0755 -d ${D}/lib/systemd/system
cp ${WORKDIR}/${MA_BIN_DIR}/my_ser.service ${D}/lib/systemd/system/
------------
------------
}

pkg_preinst_${PN}() {
------------
------------

if [  "$IS_SYSTEMD_CONFIGURED" = "yes" ] ; then
systemctl --root=$D enable my_ser.service    # Have tried executing it only
on postinstall, but it does not help.
fi
------------
------------
}

pkg_postinst_${PN}() {
------------
------------
if [  "$IS_SYSTEMD_CONFIGURED" = "yes" ] ; then
systemctl --root=$D enable ma.service
fi
 if [ x"$D" = "x" ] ; then
 # Create group and user
groupadd test_grp
useradd -r -s /sbin/nologin -g  test_grp test_usr
 chown test_usr:test_grp /etc/test_folder/*
 if [  "$IS_SYSTEMD_CONFIGURED" = "yes" ] ; then
if [ "$1" == 1 ] || [ "$1" = 2 ] ; then  # only install and upgrade
scenario, not to exeute on 1st boot
systemctl daemon-reload
systemctl start my_ser.service
fi
else
exit 1
fi
}

And here is the Unit file for my service :
-------------------------------------------------------

[Unit]
Description=test service

[Service]
Type=forking
ExecStartPre=-/bin/mkdir -p /var/tmp/test_config_file
ExecStartPre=-/bin/chmod 777 /var/tmp/test_config_file
ExecStartPre=-/bin/chmod o+t /var/tmp/test_config_file
ExecStart=/opt/test_app start
ExecStop=/opt/test_app  stop
Type=forking
TimeoutStartSec=20
SendSIGKILL=no

[Install]
WantedBy=multi-user.target

Thanks
Vipin



On Wed, Jul 1, 2015 at 10:14 PM, Saul Wold <sgw@linux.intel.com> wrote:

> On 06/30/2015 08:35 PM, Vipin Nair wrote:
>
>> Hi All,
>>
>> I have  created a layer (my first layer) and have build it with WindRiver
>> media which uses Systemd for the startup services.
>>
>> As per my application need, I have to create a new user on the final image
>> and change the owner permissions of certain files to the new user.
>> Since I could not get it done on the build machine, I have written the
>> post
>> install script such that it gets executed on the  target board during the
>> 1st boot cycle
>> and from within the post install script I am creating the new user and
>> changing the file ownership. And this works.
>>
>> But the only problem I have now is that, even though I register my service
>> with Systemd at pre-install (or postinstall) section (using the systemctl
>> enable command)
>> my service is not getting launched by Systemd during the 1st boot. On
>> subsequent reboots, it invokes my service at boot up.
>>
>> As part of debugging I just modified my postinstall script, such that it
>> gets executed on the board (i.e without the exit 1)  and not executed on
>> the 1st boot. After that I see that
>> systemd invokes my service at boot up.  So I wonder if Systemd ignores the
>> services for which post-install is not invoked at build machine ?
>>
>> Now I am confused on how to solve this problem.
>>
>> Only 2 approaches comes to my mind :
>> 1) Run the postinstall on the board only (not on 1st boot)  - But with
>> this
>> (i.e running the postinstall section on board) I don't see the new user
>> creation happening and as a result it fails to change the file ownership.
>>
>> 2) Somehow force systemd to invoke my service at startup (even with
>> postinstall running during 1st boot)  - But I don't know what I have to do
>> to achieve this.
>>
>> Here is the brief of my recipe file :
>> -----------------------------------------------
>>
>> DEPENDS += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd',
>> 'systemd-systemctl-native', '', d)}"
>>
>>
>> do_install() {
>> ------------
>> ------------
>> #if systemd configured
>> install -m 0755 -d ${D}/lib/systemd/system
>> cp ${WORKDIR}/${MA_BIN_DIR}/my_ser.service ${D}/lib/systemd/system/
>> ------------
>> ------------
>> }
>>
>> pkg_preinst_${PN}() {
>> ------------
>> ------------
>>
>> if [  "$IS_SYSTEMD_CONFIGURED" = "yes" ] ; then
>> systemctl --root=$D enable my_ser.service    # Have tried executing it
>> only
>> on postinstall, but it does not help.
>> fi
>> ------------
>> ------------
>> }
>>
>> pkg_postinst_${PN}() {
>> ------------
>> ------------
>> if [  "$IS_SYSTEMD_CONFIGURED" = "yes" ] ; then
>> systemctl --root=$D enable ma.service
>> fi
>>   if [ x"$D" = "x" ] ; then
>>   # Create group and user
>> groupadd test_grp
>> useradd -r -s /sbin/nologin -g  test_grp test_usr
>>
>
> It appears you did not try to use the useradd bbclass here.
>
>    chown test_usr:test_grp /etc/test_folder/*
>>   if [  "$IS_SYSTEMD_CONFIGURED" = "yes" ] ; then
>> if [ "$1" == 1 ] || [ "$1" = 2 ] ; then  # only install and upgrade
>> scenario, not to exeute on 1st boot
>> systemctl daemon-reload
>> systemctl start my_ser.service
>> fi
>> else
>> exit 1
>> fi
>> }
>>
>> I am new to the yacto project and the layer approach. So kindly guide me
>> on
>> how to resolve this issue.
>>
>>  If you can send your full bb file, are you using the systemd bbclass as
> I suggested in a past email?
>
> Sau!
>
>
>
>  Also if this is not the right group to get help on this issue, please
>> suggest about the relevant group.
>>
>> Thanks
>> Vipin
>>
>>
>>
>>

--001a113b487446390c0519de7e0a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks a lot Saul for your valuable inputs on my problem.=
=C2=A0<div><br></div><div>I have tried <span style=3D"font-size:12.80000019=
07349px">inheriting from the useradd.bbclass and the USER add works with bo=
th approach i.e by inheriting from <a href=3D"http://useradd.bb">useradd.bb=
</a> class or manually calling useradd.=C2=A0</span></div><div><span style=
=3D"font-size:12.8000001907349px"><br></span></div><div><span style=3D"font=
-size:12.8000001907349px">But my main problem &#39;wherein the systemd does=
 not invoke my service during first boot &#39; is not getting resolved.=C2=
=A0</span></div><div><span style=3D"font-size:12.8000001907349px"><br></spa=
n></div><div><span style=3D"font-size:12.8000001907349px">I have to run the=
 pkg_posinst on the board, for the following two reasons :=C2=A0</span></di=
v><div><span style=3D"font-size:12.8000001907349px">=C2=A0---- I have to ch=
ange the file ownership to the newly created user. If I try to do this on b=
oard, it fails</span></div><div><span style=3D"font-size:12.8000001907349px=
">----- I have to run some configuration scripts,which is required for my s=
ervice to startup. But this configuration script needs to be run only once =
per installation, and so I don&#39;t want=C2=A0</span></div><div><span styl=
e=3D"font-size:12.8000001907349px">to put is in the systemd unitfile.=C2=A0=
</span></div><div><span style=3D"font-size:12.8000001907349px"><br></span><=
/div><div><br></div><div><div style=3D"font-size:12.8000001907349px">Here i=
s the brief of my recipe file( sorry, but I can not share the whole recipe =
file)</div><div style=3D"font-size:12.8000001907349px">--------------------=
---------------------------------------------------------------------------=
-------------------</div><div style=3D"font-size:12.8000001907349px"><br></=
div><div style=3D"font-size:12.8000001907349px"><div>DEPENDS +=3D &quot;${@=
bb.utils.contains(&#39;DISTRO_FEATURES&#39;, &#39;systemd&#39;, &#39;system=
d-systemctl-native&#39;, &#39;&#39;, d)}&quot;</div><div><br></div><div><br=
></div><div>do_install() { =C2=A0</div><div><span style=3D"white-space:pre-=
wrap">		</span>------------</div><div><span style=3D"white-space:pre-wrap">=
		</span>------------</div><div><span style=3D"white-space:pre-wrap">		</sp=
an>#if systemd configured</div><div><span style=3D"white-space:pre-wrap">		=
</span>install -m 0755 -d ${D}/lib/systemd/system<span style=3D"white-space=
:pre-wrap">						</span></div><div><span style=3D"white-space:pre-wrap">		<=
/span>cp ${WORKDIR}/${MA_BIN_DIR}/my_ser.service ${D}/lib/systemd/system/</=
div><div><span style=3D"white-space:pre-wrap">		</span>------------</div><d=
iv><span style=3D"white-space:pre-wrap">		</span>------------</div><div>}</=
div><div><br></div><div>pkg_preinst_${PN}() {</div><div><span style=3D"whit=
e-space:pre-wrap">		</span>------------</div><div><span style=3D"white-spac=
e:pre-wrap">		</span>------------</div><div><br></div><div><span style=3D"w=
hite-space:pre-wrap">		</span>if [ =C2=A0&quot;$IS_SYSTEMD_CONFIGURED&quot;=
 =3D &quot;yes&quot; ] ; then<span style=3D"white-space:pre-wrap">						</s=
pan>=C2=A0</div><div><span style=3D"white-space:pre-wrap">			</span>systemc=
tl --root=3D$D enable my_ser.service =C2=A0 =C2=A0# Have tried executing it=
 only on postinstall, but it does not help.</div><div><span style=3D"white-=
space:pre-wrap">		</span>fi</div><div><span style=3D"white-space:pre-wrap">=
		</span>------------</div><div><span style=3D"white-space:pre-wrap">		</sp=
an>------------</div><div>}</div><div><br></div><div>pkg_postinst_${PN}() {=
=C2=A0</div><div><span style=3D"white-space:pre-wrap">		</span>------------=
</div><div><span style=3D"white-space:pre-wrap">		</span>------------</div>=
<div><span style=3D"white-space:pre-wrap">		</span>if [ =C2=A0&quot;$IS_SYS=
TEMD_CONFIGURED&quot; =3D &quot;yes&quot; ] ; then</div><div><span style=3D=
"white-space:pre-wrap">			</span>systemctl --root=3D$D enable ma.service</d=
iv><div><span style=3D"white-space:pre-wrap">		</span>fi</div><div><span st=
yle=3D"white-space:pre-wrap">		</span></div><div><span style=3D"white-space=
:pre-wrap">		</span>if [ x&quot;$D&quot; =3D &quot;x&quot; ] ; then</div><d=
iv><span style=3D"white-space:pre-wrap">		</span></div><div><span style=3D"=
white-space:pre-wrap">			</span># Create group and user</div><div><span sty=
le=3D"white-space:pre-wrap">			</span>groupadd test_grp</div><div><span sty=
le=3D"white-space:pre-wrap">			</span>useradd -r -s /sbin/nologin -g =C2=A0=
test_grp test_usr</div><div><span style=3D"white-space:pre-wrap">			</span>=
</div><div><span style=3D"white-space:pre-wrap">			</span>chown test_usr:te=
st_grp /etc/test_folder/*</div><div><span style=3D"white-space:pre-wrap">		=
	</span></div><div><span style=3D"white-space:pre-wrap">			</span>if [ =C2=
=A0&quot;$IS_SYSTEMD_CONFIGURED&quot; =3D &quot;yes&quot; ] ; then<span sty=
le=3D"white-space:pre-wrap">								</span></div><div><span style=3D"white-=
space:pre-wrap">				</span>if [ &quot;$1&quot; =3D=3D 1 ] || [ &quot;$1&quo=
t; =3D 2 ] ; then =C2=A0# only install and upgrade scenario, not to exeute =
on 1st boot<span style=3D"white-space:pre-wrap">										</span></div><div=
><span style=3D"white-space:pre-wrap">					</span>systemctl daemon-reload=
=C2=A0</div><div><span style=3D"white-space:pre-wrap">					</span>systemctl=
 start my_ser.service=C2=A0</div><div><span style=3D"white-space:pre-wrap">=
			</span>fi<span style=3D"white-space:pre-wrap">			</span></div><div><span=
 style=3D"white-space:pre-wrap">		</span>else</div><div><span style=3D"whit=
e-space:pre-wrap">			</span>exit 1</div><div><span style=3D"white-space:pre=
-wrap">		</span>fi</div><div>}</div><div><span style=3D"white-space:pre-wra=
p">		</span></div></div></div><div><span style=3D"font-size:12.800000190734=
9px"><br></span></div><div><span style=3D"font-size:12.8000001907349px">And=
 here is the Unit file for my service :=C2=A0</span></div><div><span style=
=3D"font-size:12.8000001907349px">-----------------------------------------=
--------------</span></div><div><span style=3D"font-size:12.8000001907349px=
"><br></span></div><div><div style><div><span style=3D"font-size:12.8000001=
907349px">[Unit]</span></div><div><span style=3D"font-size:12.8000001907349=
px">Description=3Dtest service</span></div><div><span style=3D"font-size:12=
.8000001907349px"><br></span></div><div><span style=3D"font-size:12.8000001=
907349px">[Service]</span></div><div><span style=3D"font-size:12.8000001907=
349px">Type=3Dforking</span></div><div><span style=3D"font-size:12.80000019=
07349px">ExecStartPre=3D-/bin/mkdir -p /var/tmp/test_config_file</span></di=
v><div><span style=3D"font-size:12.8000001907349px">ExecStartPre=3D-/bin/ch=
mod 777 /var/tmp/</span><span style=3D"font-size:12.8000001907349px">test_c=
onfig_file</span></div><div><span style=3D"font-size:12.8000001907349px">Ex=
ecStartPre=3D-/bin/chmod o+t /var/tmp/</span><span style=3D"font-size:12.80=
00001907349px">test_config_file</span></div><div><span style=3D"font-size:1=
2.8000001907349px">ExecStart=3D/opt/test_app start</span></div><div><span s=
tyle=3D"font-size:12.8000001907349px">ExecStop=3D</span><span style=3D"font=
-size:12.8000001907349px">/opt/test_app</span><span style=3D"font-size:12.8=
000001907349px">=C2=A0=C2=A0stop</span></div><div><span style=3D"font-size:=
12.8000001907349px">Type=3Dforking</span></div><div><span style=3D"font-siz=
e:12.8000001907349px">TimeoutStartSec=3D20</span></div><div><span style=3D"=
font-size:12.8000001907349px">SendSIGKILL=3Dno</span></div><div><span style=
=3D"font-size:12.8000001907349px"><br></span></div><div><span style=3D"font=
-size:12.8000001907349px">[Install]</span></div><div><span style=3D"font-si=
ze:12.8000001907349px">WantedBy=3Dmulti-user.target</span></div><div><span =
style=3D"font-size:12.8000001907349px"><br></span></div><div><span style=3D=
"font-size:12.8000001907349px">Thanks</span></div><div><span style=3D"font-=
size:12.8000001907349px">Vipin</span></div></div></div><div><span style=3D"=
font-size:12.8000001907349px"><br></span></div><div><span style=3D"font-siz=
e:12.8000001907349px"><br></span></div></div><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">On Wed, Jul 1, 2015 at 10:14 PM, Saul Wold <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:sgw@linux.intel.com" target=3D"_blank">=
sgw@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><div class=3D"HOEnZb"><div class=3D"h5">On 06/30/2015 08:35 PM, Vipin Nair=
 wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi All,<br>
<br>
I have=C2=A0 created a layer (my first layer) and have build it with WindRi=
ver<br>
media which uses Systemd for the startup services.<br>
<br>
As per my application need, I have to create a new user on the final image<=
br>
and change the owner permissions of certain files to the new user.<br>
Since I could not get it done on the build machine, I have written the post=
<br>
install script such that it gets executed on the=C2=A0 target board during =
the<br>
1st boot cycle<br>
and from within the post install script I am creating the new user and<br>
changing the file ownership. And this works.<br>
<br>
But the only problem I have now is that, even though I register my service<=
br>
with Systemd at pre-install (or postinstall) section (using the systemctl<b=
r>
enable command)<br>
my service is not getting launched by Systemd during the 1st boot. On<br>
subsequent reboots, it invokes my service at boot up.<br>
<br>
As part of debugging I just modified my postinstall script, such that it<br=
>
gets executed on the board (i.e without the exit 1)=C2=A0 and not executed =
on<br>
the 1st boot. After that I see that<br>
systemd invokes my service at boot up.=C2=A0 So I wonder if Systemd ignores=
 the<br>
services for which post-install is not invoked at build machine ?<br>
<br>
Now I am confused on how to solve this problem.<br>
<br>
Only 2 approaches comes to my mind :<br>
1) Run the postinstall on the board only (not on 1st boot)=C2=A0 - But with=
 this<br>
(i.e running the postinstall section on board) I don&#39;t see the new user=
<br>
creation happening and as a result it fails to change the file ownership.<b=
r>
<br>
2) Somehow force systemd to invoke my service at startup (even with<br>
postinstall running during 1st boot)=C2=A0 - But I don&#39;t know what I ha=
ve to do<br>
to achieve this.<br>
<br>
Here is the brief of my recipe file :<br>
-----------------------------------------------<br>
<br>
DEPENDS +=3D &quot;${@bb.utils.contains(&#39;DISTRO_FEATURES&#39;, &#39;sys=
temd&#39;,<br>
&#39;systemd-systemctl-native&#39;, &#39;&#39;, d)}&quot;<br>
<br>
<br>
do_install() {<br>
------------<br>
------------<br>
#if systemd configured<br>
install -m 0755 -d ${D}/lib/systemd/system<br>
cp ${WORKDIR}/${MA_BIN_DIR}/my_ser.service ${D}/lib/systemd/system/<br>
------------<br>
------------<br>
}<br>
<br>
pkg_preinst_${PN}() {<br>
------------<br>
------------<br>
<br>
if [=C2=A0 &quot;$IS_SYSTEMD_CONFIGURED&quot; =3D &quot;yes&quot; ] ; then<=
br>
systemctl --root=3D$D enable my_ser.service=C2=A0 =C2=A0 # Have tried execu=
ting it only<br>
on postinstall, but it does not help.<br>
fi<br>
------------<br>
------------<br>
}<br>
<br>
pkg_postinst_${PN}() {<br>
------------<br>
------------<br>
if [=C2=A0 &quot;$IS_SYSTEMD_CONFIGURED&quot; =3D &quot;yes&quot; ] ; then<=
br>
systemctl --root=3D$D enable ma.service<br>
fi<br>
=C2=A0 if [ x&quot;$D&quot; =3D &quot;x&quot; ] ; then<br>
=C2=A0 # Create group and user<br>
groupadd test_grp<br>
useradd -r -s /sbin/nologin -g=C2=A0 test_grp test_usr<br>
</blockquote>
<br></div></div>
It appears you did not try to use the useradd bbclass here.<span class=3D""=
><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
=C2=A0 chown test_usr:test_grp /etc/test_folder/*<br>
=C2=A0 if [=C2=A0 &quot;$IS_SYSTEMD_CONFIGURED&quot; =3D &quot;yes&quot; ] =
; then<br>
if [ &quot;$1&quot; =3D=3D 1 ] || [ &quot;$1&quot; =3D 2 ] ; then=C2=A0 # o=
nly install and upgrade<br>
scenario, not to exeute on 1st boot<br>
systemctl daemon-reload<br>
systemctl start my_ser.service<br>
fi<br>
else<br>
exit 1<br>
fi<br>
}<br>
<br>
I am new to the yacto project and the layer approach. So kindly guide me on=
<br>
how to resolve this issue.<br>
<br>
</blockquote></span>
If you can send your full bb file, are you using the systemd bbclass as I s=
uggested in a past email?<br>
<br>
Sau!<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Also if this is not the right group to get help on this issue, please<br>
suggest about the relevant group.<br>
<br>
Thanks<br>
Vipin<br>
<br>
<br>
<br>
</blockquote>
</div></div></blockquote></div><br></div>

--001a113b487446390c0519de7e0a--
