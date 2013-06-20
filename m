Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30B30E013EC
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 00:12:01 -0700 (PDT)
Received: by mail-vc0-f182.google.com with SMTP id id13so4506515vcb.27
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 00:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=RS6DrRDzew5VR/+4niT37wqPkAQmjLM8U33vZY+b9rE=;
	b=CpfcUGRWRhSpE0jzI/phxYTZZi6B9H1oTgyXOtPVtLDDtEFjPPW8Gd9YDuUwxqPhd8
	UQ3aoNr7XT+nikK7P8GuzF7V68k7wzN/RGo6OfeO2J86qwLH890G0xAPfJI+hXirCDrZ
	6J9hkBCTqLUOt6+JOzwBZclsgvHgU0V6MntBUIuYGnJ9yLC0SljhlhtdmBZ+tjCWQY6X
	Fum9/i4wRpEfK3+7xNNcEZxadKvtu+lxu9iW7GqdMjg1tXyyyeyQDD9SK3FFjQcHRtzN
	PuszQGSntilk4rwhEFmugF7LtxuNYYC4ETaLLqxZ8VwgJpF2zoTt9kdL+b2S0cgOcCoy
	J6PA==
MIME-Version: 1.0
X-Received: by 10.58.238.167 with SMTP id vl7mr2375918vec.19.1371712320717;
	Thu, 20 Jun 2013 00:12:00 -0700 (PDT)
Received: by 10.52.179.33 with HTTP; Thu, 20 Jun 2013 00:12:00 -0700 (PDT)
In-Reply-To: <CAFMfyz+YoRDJ-5sC3ayaD+8oiY8rHyUWfyJnixcXbCsngYDUcA@mail.gmail.com>
References: <CAFMfyzKMgx_6gJLO13ei7nr3fxaJg0-A3nG0=BCWQk5rH9p4TQ@mail.gmail.com>
	<CAJTo0LbzcSMRwoowq00MZr1G=+Vo-M6=VA=6HRuTBf6YMiBnAg@mail.gmail.com>
	<CAFMfyz+YoRDJ-5sC3ayaD+8oiY8rHyUWfyJnixcXbCsngYDUcA@mail.gmail.com>
Date: Thu, 20 Jun 2013 09:12:00 +0200
Message-ID: <CAFMfyzK9CusGuo40vWHdrq1dbD2fna-zTrBaiEQccfXUvhuBzg@mail.gmail.com>
From: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Toolchain... Issues with systemd (probably)
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
X-List-Received-Date: Thu, 20 Jun 2013 07:12:04 -0000
Content-Type: multipart/alternative; boundary=047d7bdcac189c7b3a04df90a9b8

--047d7bdcac189c7b3a04df90a9b8
Content-Type: text/plain; charset=ISO-8859-1

Any reasons why toolchains compile wihtout any issues on sysvinit and not
with systemd?


On Wed, Jun 19, 2013 at 3:11 PM, DAMARLA Satya Swaroop <
swaroop.damarla@gmail.com> wrote:

> Yes... I thought the same and so, I made two build directories , one for
> sysvinit and the other for systemd and the errors I get abosulte no error
> when I try to *populate_sdk* under sysvinit but I get the following
> errors when I run the same under systemd.
>
> *| The following packages have unmet dependencies:*
> *|  udev-dev : Depends: udev (= 182-r7) but 1:204-r0 is to be installed*
> *|             Recommends: libusb-dev but it is not installable*
> *|             Recommends: module-init-tools-dev but it is not installable
> *
> *|             Recommends: libkmod-dev but it is not installable*
> *| E: Unable to correct problems, you have held broken packages.*
> *| DEBUG: Python function do_populate_sdk finished*
> *| ERROR: Function failed: populate_sdk_image (log file is located at
> /home/damarla/openYocto/poky/buildSmartCPUsystemd/tmp/work/smartcpu-poky-linux-gnueabi/rootfs-smartcpu-sdk/1.0-r0/temp/log.do_populate_sdk.17015)
> *
> *ERROR: Task 10
> (/home/damarla/openYocto/poky/meta-skidata/recipes-smartcpu/images/
> rootfs-smartcpu-sdk.bb, do_populate_sdk) failed with exit code '1'*
> *NOTE: Tasks Summary: Attempted 4961 tasks of which 4960 didn't need to
> be rerun and 1 failed.*
> *
> *
> *Summary: 1 task failed:*
> *  /home/damarla/openYocto/poky/meta-skidata/recipes-smartcpu/images/
> rootfs-smartcpu-sdk.bb, do_populate_sdk*
> *Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> *
> *
> *
> * *I don't understand why I dont get an error with sysvinit and get an
> error here....
>
>
> On Wed, Jun 19, 2013 at 2:11 PM, Burton, Ross <ross.burton@intel.com>wrote:
>
>> On 19 June 2013 13:08, DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>
>> wrote:
>> > I think I had to open the issue as its not closed... Here is more
>> > clarity....
>> >
>> > The issue is I decided the problem may be with init_manager. I did two
>> > builds one with sysvinit using traditional Poky distro and other one is
>> > uisng systemd using new distribution which is different as we need a new
>> > distribution for using systemd
>> >
>> > .. I didno t get any errors when i build using bitbake -c populate_sdk
>> > rootfs-smartcpu with sysvinit and got build errors using systemd...
>> >
>> > Any possible resons what could have caused failure to build the
>> toolchain?
>>
>> It really helps when you tell us what the errors are.
>>
>> Note that changing DISTRO_FEATURES in an existing build directory
>> isn't supported and may well cause problems.
>>
>> Ross
>>
>
>

--047d7bdcac189c7b3a04df90a9b8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Any reasons why toolchains compile wihtout any issues on s=
ysvinit and not with systemd?</div><div class=3D"gmail_extra"><br><br><div =
class=3D"gmail_quote">On Wed, Jun 19, 2013 at 3:11 PM, DAMARLA Satya Swaroo=
p <span dir=3D"ltr">&lt;<a href=3D"mailto:swaroop.damarla@gmail.com" target=
=3D"_blank">swaroop.damarla@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Yes... I thought the same a=
nd so, I made two build directories , one for sysvinit and the other for sy=
stemd and the errors I get abosulte no error when I try to <i>populate_sdk<=
/i>=A0under sysvinit but I get the following errors when I run the same und=
er systemd.<div>

<br></div><div><div><i>| The following packages have unmet dependencies:</i=
></div><div><i>| =A0udev-dev : Depends: udev (=3D 182-r7) but 1:204-r0 is t=
o be installed</i></div><div><i>| =A0 =A0 =A0 =A0 =A0 =A0 Recommends: libus=
b-dev but it is not installable</i></div>

<div><i>| =A0 =A0 =A0 =A0 =A0 =A0 Recommends: module-init-tools-dev but it =
is not installable</i></div><div><i>| =A0 =A0 =A0 =A0 =A0 =A0 Recommends: l=
ibkmod-dev but it is not installable</i></div><div><i>| E: Unable to correc=
t problems, you have held broken packages.</i></div>

<div><i>| DEBUG: Python function do_populate_sdk finished</i></div><div><i>=
| ERROR: Function failed: populate_sdk_image (log file is located at /home/=
damarla/openYocto/poky/buildSmartCPUsystemd/tmp/work/smartcpu-poky-linux-gn=
ueabi/rootfs-smartcpu-sdk/1.0-r0/temp/log.do_populate_sdk.17015)</i></div>

<div><i>ERROR: Task 10 (/home/damarla/openYocto/poky/meta-skidata/recipes-s=
martcpu/images/<a href=3D"http://rootfs-smartcpu-sdk.bb" target=3D"_blank">=
rootfs-smartcpu-sdk.bb</a>, do_populate_sdk) failed with exit code &#39;1&#=
39;</i></div>
<div>
<i>NOTE: Tasks Summary: Attempted 4961 tasks of which 4960 didn&#39;t need =
to be rerun and 1 failed.</i></div><div><i><br></i></div><div><i>Summary: 1=
 task failed:</i></div><div><i>=A0 /home/damarla/openYocto/poky/meta-skidat=
a/recipes-smartcpu/images/<a href=3D"http://rootfs-smartcpu-sdk.bb" target=
=3D"_blank">rootfs-smartcpu-sdk.bb</a>, do_populate_sdk</i></div>

<div><i>Summary: There was 1 ERROR message shown, returning a non-zero exit=
 code.</i></div></div><div><i><br></i></div><div><i>=A0</i>I don&#39;t unde=
rstand why I dont get an error with sysvinit and get an error here....</div=
>

</div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><b=
r><br><div class=3D"gmail_quote">On Wed, Jun 19, 2013 at 2:11 PM, Burton, R=
oss <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=
=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div>On 19 June 2013 13:08, DAMARLA Sat=
ya Swaroop &lt;<a href=3D"mailto:swaroop.damarla@gmail.com" target=3D"_blan=
k">swaroop.damarla@gmail.com</a>&gt; wrote:<br>


&gt; I think I had to open the issue as its not closed... Here is more<br>
&gt; clarity....<br>
&gt;<br>
&gt; The issue is I decided the problem may be with init_manager. I did two=
<br>
&gt; builds one with sysvinit using traditional Poky distro and other one i=
s<br>
&gt; uisng systemd using new distribution which is different as we need a n=
ew<br>
&gt; distribution for using systemd<br>
&gt;<br>
&gt; .. I didno t get any errors when i build using bitbake -c populate_sdk=
<br>
&gt; rootfs-smartcpu with sysvinit and got build errors using systemd...<br=
>
&gt;<br>
&gt; Any possible resons what could have caused failure to build the toolch=
ain?<br>
<br>
</div></div>It really helps when you tell us what the errors are.<br>
<br>
Note that changing DISTRO_FEATURES in an existing build directory<br>
isn&#39;t supported and may well cause problems.<br>
<span><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--047d7bdcac189c7b3a04df90a9b8--
