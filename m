Return-Path: <r10kindsofpeople@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 697E3E00950; Tue, 20 Mar 2018 07:13:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (r10kindsofpeople[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 380D7E00873
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2018 07:13:27 -0700 (PDT)
Received: by mail-lf0-f42.google.com with SMTP id y19-v6so2784935lfd.4
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2018 07:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=vBUfVl4WMab4aKP5lDwmj4IwoOc/dFLTdqIONX+gRL4=;
	b=Fg4ncCefTETaEeEV4ALFY3Jd4Qeh4a8g2ncMIn7EqFhKzbCGa6Y8vhK2mnPzLAH60Q
	IH7XkU8EqI6qvB0HyoKjgdwIUHr8cZtHYVcEND+JF9GUssddTYrvWS/iFHrHIrBa779i
	JAt+9uTITCFNkSD7xrL1jdJjm5Sj1cZsyH5AKFGXh8t7y5sPzp9cw9DlwdoNF9myqcBa
	f24FaL/wKaFrQH8hQO4+ZNV5YXSUVH3WNh9fhzr38PG9gW0YTEyr3xo1bZicRRuoi0oJ
	wzcS2nPqaaAmv2qY55LENVIdMQzGFy2EAA0T37ILJysodPSQkvYBhemgfjBimplL2cst
	I4SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=vBUfVl4WMab4aKP5lDwmj4IwoOc/dFLTdqIONX+gRL4=;
	b=eN/ZibSdg0VaDTV9esu3OqDpZ0PucH1axmYQwxCU84qg9L2BsRpXdbkPheIJZgwU1q
	8FnZpAdICSt2jiKYvx3DLFLZfrASGPMBkgN9sEDdtcO8GChnViXpq9FXFVIlQbjdpHhk
	7RmA1/Msyb2IVJTcL7dqKtYdxXnsItUnqMsqNnAMfqAEgfX6dhM/bgI6cGN3fT64CpF1
	k+LnwVdqDFf0C4ohadWxqNK3T8sRxthBCQbqlVjLbo2SvdRTpeTdvNPmm+2soJjWRjJK
	9Q4XxdZJiH69JPL1ioy7MlqSHJCiA2oprPqcWWIFTEVFSk2mHWoMvYeEjlh0mVF7f7fZ
	AGYg==
X-Gm-Message-State: AElRT7Gc52DNchxH+DfjJMbRcoL2Xx/IDZ4+od0u3yrVfKh9t7Jrl87A
	ntGXuGNslaI1jcNnMWKn8u2Nocl6uGZxD625wCQ=
X-Google-Smtp-Source: AG47ELv0eYHSh4rMEMnhPV6EFoqvNR5WFrTiSD9B9+z3Pxb3/evyGuxNMgEZ1THO2k757nC0mOhK/1SJBpPq7782Ya0=
X-Received: by 10.46.91.143 with SMTP id m15mr1565194lje.75.1521555206729;
	Tue, 20 Mar 2018 07:13:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAE8H0+VGybDX4udg73E24ie-DxK7_bkVPB3xKWer_gtpr885jQ@mail.gmail.com>
	<CAE8H0+VprE4U2jfnoPJERuuEfDb8rM6oQVnCJdo8QSYt6gCCDw@mail.gmail.com>
	<80041285-9116-fbd2-0e4a-972d31878be4@windriver.com>
	<e2909955-f5ec-7034-7baf-4b459c51cac4@windriver.com>
In-Reply-To: <e2909955-f5ec-7034-7baf-4b459c51cac4@windriver.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
Date: Tue, 20 Mar 2018 14:13:16 +0000
Message-ID: <CAE8H0+Xj75i8QCaoHJYXWa3OkY-uor322rjBOcz8zHG5aOQ3sg@mail.gmail.com>
To: Dengke Du <dengke.du@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-raspberrypi systemd rpi0-w bluetooth startup
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
X-List-Received-Date: Tue, 20 Mar 2018 14:13:30 -0000
Content-Type: multipart/alternative; boundary="94eb2c1ab0bc9a754e0567d8ad22"

--94eb2c1ab0bc9a754e0567d8ad22
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Dengke, I thought I tried using the line "After=3Ddev-ttyAMA0.device=
"
and referring to /dev/ttyAMA0 in the hciattach command and the
brcm43438.service was still being triggered before the /dev/ttyAMA0 device
was actually available on some boots, but I may have had something else
wrong at that point, or I may be recalling incorrectly.  If it works for
you, great.

It doesn't make sense to me that we'd need the udev-rules-rpi for bluez,
but then refer to /dev/ttyAMA0 in the service.  I thought the point of the
99-com.rules file created by udev-rules-rpi was to create a symbolic link
equating /dev/ttyAMA0 and /dev/serial1 on the rpi0w.

It's my impression that the move to use /dev/serial1 (as an alias for
/dev/ttyAMA0) is an attempt to make software written for the Raspberry Pi
more portable across all variants of the Pi, since some variants swap the
role of /dev/ttyS0 and /dev/ttyAMA0 for the console or swap which one is
available on the GPIO expansion.  Or perhaps the goal was portablilty from
Raspbian to Yocto and back.  The steps I outlined retain that, and still
seem to work reliably.  I'm not entirely comfortable with relying on the
udev script to trigger the service that runs hciattach, (and all of bluez
dependent on that), but acknowledge that I don't know enough about systemd
and udev to know "proper" from "improper".

John

On Mon, Mar 19, 2018 at 11:01 PM Dengke Du <dengke.du@windriver.com> wrote:

> Raspberry pi have two built-in UARTs, PL011 and mini UART
>
> by default: /dev/ttyS0 refers to the mini UART, /dev/ttyAMA0 refers to th=
e
> PL011
>
>     https://www.raspberrypi.org/documentation/configuration/uart.md
>
> So I think the brcm43438 service should use the /dev/ttyAMA0.
>
> On 2018=E5=B9=B403=E6=9C=8820=E6=97=A5 10:41, Dengke Du wrote:
>
> For rpi0-w bluetooth, before the commit:
>
>
> https://github.com/agherzan/meta-raspberrypi/commit/6235b0a8543bcf6704d0f=
e0156ab2b847a4ea0bc#diff-70e4910388c3702c52118d7acf7556e7
>
> the brcm43438.service always failed, because it depends on
> /dev/ttyAMA0,after that commit, the 'udev-rules-rpi' added to the RDEPEND=
S
> for rpi0-w,we
>
> can check it here:
>
>
> https://github.com/agherzan/meta-raspberrypi/commit/6235b0a8543bcf6704d0f=
e0156ab2b847a4ea0bc#diff-3b2568c620828b0ba653c1070041318aR52
>
> for service brcm43438, but I still use the /dev/ttyAMA0 in it, not
> /dev/serial1(when I use /dev/serial1, the service failed), the service ca=
n
> start everytime correctly.
>
> On 2018=E5=B9=B403=E6=9C=8819=E6=97=A5 02:10, r10kindsofpeople wrote:
>
> Update:  I suspect this is not the proper way to do this, but in case it
> provides useful information toward a better solution...
> 1) systemctl disable brcm43438.service
> 2) modified 99-com.rules to include TAG+=3D"systemd" and
> ENV{SYSTEMD_WANTS}=3D"device-brcm43438.service"
> 3) cp /lib/systemd/system/brcm43438.service
> /etc/systemd/system/device-brcm43438.service
> 4) modified device-brcm43438.service to be as follows:
> [Unit]
> Description=3DBroadcom BCM43438 bluetooth HCI
>
> [Service]
> Type=3Dsimple
> ExecStart=3D/usr/bin/hciattach -n /dev/serial1 bcm43xx 921600 noflow -
> Restart=3Don-failure
>
> note removal of Before, After, ConditionPath, Install sections and
> addition of Restart=3Don-failure.  This last was to cope with an intermit=
tent
> timeout in hciattach.  Suppose I should have tried increasing the timeout
> first.
>
> This seems to have gotten me to the point of it starting up at least 10
> times successfully.  Bottom line, in my opinion, is that brcm43438.servic=
e
> is somehow running  before the udev script can create the symbolic link f=
or
> /dev/serial1 -> /dev/ttyAMA0 despite the  "After=3Ddev-serial1.device"
> clause.
>
> John
>
>
> On Sat, Mar 17, 2018 at 12:32 PM r10kindsofpeople <
> r10kindsofpeople@gmail.com> wrote:
>
>> Background:  I'm trying to bring up the pi zero w's bluetooth using
>> systemd.  Started with rocko and then moved to 'master' of meta-raspberr=
y
>> pi, sync'd about a week ago after noticing that there were some recent
>> updates in this area.
>>
>> There was an initial problem with /dev/serial1 not showing up...I found
>> udev-rules-rpi.bb, added it to my layer, and when it still didn't show
>> up in my rootfs, I punted and installed it in /etc/udev/rules.d by hand =
and
>> now /dev/serial1 shows up.  Given time, I can probably fix the recipe on=
 my
>> own, so moving on.
>>
>> But brcm43438.service still fails on boot.  Despite having
>> "After=3Ddev-serial1.device" in the service Unit section, it fails with:
>>
>> Mar 17 16:21:13 raspberrypi0-wifi systemd[1]: Started Broadcom BCM43438
>> bluetooth HCI.
>> Mar 17 16:21:14 raspberrypi0-wifi hciattach[105]: Can't open serial port=
:
>> No such file or directory
>> Mar 17 16:21:14 raspberrypi0-wifi hciattach[105]: Can't initialize
>> device: No such file or directory
>> Mar 17 16:21:14 raspberrypi0-wifi systemd[1]: [[0;1;39mbrcm43438.service=
:
>> Main process exited, code=3Dexited, status=3D1/FAILURE[[0m
>> Mar 17 16:21:14 raspberrypi0-wifi systemd[1]: [[0;1;39mbrcm43438.service=
:
>> Unit entered failed state.[[0m
>> Mar 17 16:21:14 raspberrypi0-wifi systemd[1]: [[0;1;39mbrcm43438.service=
:
>> Failed with result 'exit-code'.[[0m
>>
>> If, after booting and ssh'ing into pi, I restart the service, it starts
>> successfully.
>>
>> Any hints about what I might change to get the brcm43438.service to star=
t
>> correctly the first time (every time)?
>>
>> John
>>
>
>
>
>
>
>
>

--94eb2c1ab0bc9a754e0567d8ad22
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Dengke, I thought I tried using the line &quot=
;After=3Ddev-ttyAMA0.device&quot; and referring to /dev/ttyAMA0 in the hcia=
ttach command and the brcm43438.service was still being triggered before th=
e /dev/ttyAMA0 device was actually available on some boots, but I may have =
had something else wrong at that point, or I may be recalling incorrectly.=
=C2=A0 If it works for you, great.=C2=A0=C2=A0</div><div><br></div><div>It =
doesn&#39;t make sense to me that we&#39;d need the udev-rules-rpi for blue=
z, but then refer to /dev/ttyAMA0 in the service.=C2=A0 I thought the point=
 of the 99-com.rules file created by udev-rules-rpi was to create a symboli=
c link equating /dev/ttyAMA0 and /dev/serial1 on the rpi0w.=C2=A0=C2=A0</di=
v><div><br></div><div>It&#39;s my impression that the move to use /dev/seri=
al1 (as an alias for /dev/ttyAMA0) is an attempt to make software written f=
or the Raspberry Pi more portable across all variants of the Pi, since some=
 variants swap the role of /dev/ttyS0 and /dev/ttyAMA0 for the console or s=
wap which one is available on the GPIO expansion.=C2=A0 Or perhaps the goal=
 was portablilty from Raspbian to Yocto and back.=C2=A0 The steps I outline=
d retain that, and still seem to work reliably.=C2=A0 I&#39;m not entirely =
comfortable with relying on the udev script to trigger the service that run=
s hciattach, (and all of bluez dependent on that), but acknowledge that I d=
on&#39;t know enough about systemd and udev to know &quot;proper&quot; from=
 &quot;improper&quot;.=C2=A0=C2=A0</div><div><br></div><div>John</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Mar 19, 2018 at 11=
:01 PM Dengke Du &lt;<a href=3D"mailto:dengke.du@windriver.com">dengke.du@w=
indriver.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Raspberry pi have two built-in UARTs, PL011 and mini UART</p>
    <p>by default: /dev/ttyS0 refers to the mini UART, /dev/ttyAMA0
      refers to the PL011<br>
    </p>
    <p>=C2=A0=C2=A0=C2=A0
      <a class=3D"m_-1045807447368709098moz-txt-link-freetext" href=3D"http=
s://www.raspberrypi.org/documentation/configuration/uart.md" target=3D"_bla=
nk">https://www.raspberrypi.org/documentation/configuration/uart.md</a></p>
    <p>So I think the brcm43438 service should use the /dev/ttyAMA0.<br>
    </p></div><div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <br>
    <div class=3D"m_-1045807447368709098moz-cite-prefix">On 2018=E5=B9=B403=
=E6=9C=8820=E6=97=A5 10:41, Dengke Du wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <p>For rpi0-w bluetooth, before the commit:</p>
      <p>=C2=A0=C2=A0=C2=A0
        <a class=3D"m_-1045807447368709098moz-txt-link-freetext" href=3D"ht=
tps://github.com/agherzan/meta-raspberrypi/commit/6235b0a8543bcf6704d0fe015=
6ab2b847a4ea0bc#diff-70e4910388c3702c52118d7acf7556e7" target=3D"_blank">ht=
tps://github.com/agherzan/meta-raspberrypi/commit/6235b0a8543bcf6704d0fe015=
6ab2b847a4ea0bc#diff-70e4910388c3702c52118d7acf7556e7</a></p>
      <p>the brcm43438.service always failed, because it depends on
        /dev/ttyAMA0,after that commit, the &#39;udev-rules-rpi&#39; added =
to
        the RDEPENDS for rpi0-w,we</p>
      <p>can check it here:</p>
      <p>=C2=A0=C2=A0=C2=A0
        <a class=3D"m_-1045807447368709098moz-txt-link-freetext" href=3D"ht=
tps://github.com/agherzan/meta-raspberrypi/commit/6235b0a8543bcf6704d0fe015=
6ab2b847a4ea0bc#diff-3b2568c620828b0ba653c1070041318aR52" target=3D"_blank"=
>https://github.com/agherzan/meta-raspberrypi/commit/6235b0a8543bcf6704d0fe=
0156ab2b847a4ea0bc#diff-3b2568c620828b0ba653c1070041318aR52</a></p>
      <p>for service brcm43438, but I still use the /dev/ttyAMA0 in it,
        not /dev/serial1(when I use /dev/serial1, the service failed),
        the service can start everytime correctly. <br>
      </p>
      <br>
      <div class=3D"m_-1045807447368709098moz-cite-prefix">On 2018=E5=B9=B4=
03=E6=9C=8819=E6=97=A5 02:10,
        r10kindsofpeople wrote:<br>
      </div>
      <blockquote type=3D"cite">
        <div dir=3D"ltr">Update:=C2=A0 I suspect this is not the proper way=
 to
          do this, but in case it provides useful information toward a
          better solution...
          <div>1) systemctl disable brcm43438.service</div>
          <div>2) modified 99-com.rules to include TAG+=3D&quot;systemd&quo=
t; and
            ENV{SYSTEMD_WANTS}=3D&quot;device-brcm43438.service&quot;</div>
          <div>3) cp /lib/systemd/system/brcm43438.service
            /etc/systemd/system/device-brcm43438.service</div>
          <div>4) modified device-brcm43438.service to be as follows:</div>
          <div>
            <div><span style=3D"font-size:13px">[Unit]</span></div>
            <div><span style=3D"font-size:13px">Description=3DBroadcom
                BCM43438 bluetooth HCI</span></div>
            <div><span style=3D"font-size:13px"><br>
              </span></div>
            <div><span style=3D"font-size:13px">[Service]</span></div>
            <div><span style=3D"font-size:13px">Type=3Dsimple</span></div>
            <div><span style=3D"font-size:13px">ExecStart=3D/usr/bin/hciatt=
ach
                -n /dev/serial1 bcm43xx 921600 noflow -</span></div>
            <div><span style=3D"font-size:13px">Restart=3Don-failure</span>=
</div>
          </div>
          <div><br>
          </div>
          <div>note removal of Before, After, ConditionPath, Install
            sections and addition of Restart=3Don-failure.=C2=A0 This last =
was
            to cope with an intermittent timeout in hciattach.=C2=A0 Suppos=
e
            I should have tried increasing the timeout first.=C2=A0=C2=A0</=
div>
          <div><br>
          </div>
          <div>This seems to have gotten me to the point of it starting
            up at least 10 times successfully.=C2=A0 Bottom line, in my
            opinion, is that brcm43438.service is somehow
            running=C2=A0=C2=A0before the udev script can create the symbol=
ic link
            for /dev/serial1 -&gt; /dev/ttyAMA0 despite the=C2=A0
            &quot;After=3Ddev-serial1.device&quot; clause.=C2=A0=C2=A0</div=
>
          <div><br>
          </div>
          <div>John</div>
          <div>
            <div><br>
            </div>
          </div>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr">On Sat, Mar 17, 2018 at 12:32 PM
            r10kindsofpeople &lt;<a href=3D"mailto:r10kindsofpeople@gmail.c=
om" target=3D"_blank">r10kindsofpeople@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">
            <div dir=3D"ltr">
              <div>Background:=C2=A0 I&#39;m trying to bring up the pi zero=
 w&#39;s
                bluetooth using systemd.=C2=A0 Started with rocko and then
                moved to &#39;master&#39; of meta-raspberry pi, sync&#39;d =
about a
                week ago after noticing that there were some recent
                updates in this area.=C2=A0=C2=A0</div>
              <div><br>
              </div>
              <div>There was an initial problem with /dev/serial1 not
                showing up...I found <a href=3D"http://udev-rules-rpi.bb" t=
arget=3D"_blank">udev-rules-rpi.bb</a>,
                added it to my layer, and when it still didn&#39;t show up
                in my rootfs, I punted and installed it in
                /etc/udev/rules.d by hand and now /dev/serial1 shows
                up.=C2=A0 Given time, I can probably fix the recipe on my
                own, so moving on.</div>
              <div><br>
              </div>
              <div>But brcm43438.service still fails on boot.=C2=A0 Despite
                having &quot;After=3Ddev-serial1.device&quot; in the servic=
e Unit
                section, it fails with:</div>
              <div><br>
              </div>
              <div>Mar 17 16:21:13 raspberrypi0-wifi systemd[1]: Started
                Broadcom BCM43438 bluetooth HCI.</div>
              <div>Mar 17 16:21:14 raspberrypi0-wifi hciattach[105]:
                Can&#39;t open serial port: No such file or directory</div>
              <div>Mar 17 16:21:14 raspberrypi0-wifi hciattach[105]:
                Can&#39;t initialize device: No such file or directory</div=
>
              <div>Mar 17 16:21:14 raspberrypi0-wifi systemd[1]:
                [[0;1;39mbrcm43438.service: Main process exited,
                code=3Dexited, status=3D1/FAILURE[[0m</div>
              <div>Mar 17 16:21:14 raspberrypi0-wifi systemd[1]:
                [[0;1;39mbrcm43438.service: Unit entered failed
                state.[[0m</div>
              <div>Mar 17 16:21:14 raspberrypi0-wifi systemd[1]:
                [[0;1;39mbrcm43438.service: Failed with result
                &#39;exit-code&#39;.[[0m</div>
              <div><br>
              </div>
              <div>If, after booting and ssh&#39;ing into pi, I restart the
                service, it starts successfully.=C2=A0=C2=A0</div>
              <div><br>
              </div>
              <div>Any hints about what I might change to get the
                brcm43438.service to start correctly the first time
                (every time)?</div>
              <div><br>
              </div>
              <div>John</div>
            </div>
          </blockquote>
        </div>
        <br>
        <fieldset class=3D"m_-1045807447368709098mimeAttachmentHeader"></fi=
eldset>
        <br>
      </blockquote>
      <br>
      <br>
      <fieldset class=3D"m_-1045807447368709098mimeAttachmentHeader"></fiel=
dset>
      <br>
    </blockquote>
    <br>
  </div></blockquote></div>

--94eb2c1ab0bc9a754e0567d8ad22--
