Return-Path: <gada.kashyap@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BBC4E00BBF; Fri, 30 May 2014 05:36:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gada.kashyap[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yh0-f47.google.com (mail-yh0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B510E00A44
	for <yocto@yoctoproject.org>; Fri, 30 May 2014 05:36:06 -0700 (PDT)
Received: by mail-yh0-f47.google.com with SMTP id z6so1478145yhz.34
	for <yocto@yoctoproject.org>; Fri, 30 May 2014 05:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=d9DFrVTM119evV7DC8EH/5s5wxBkPwZM9uQLXw6sAI0=;
	b=yccVg5qzXX8QP75HltR6WEyzrf12j7t5Nf6gDY0JIt/VI1Wms7boCn8p7Ye6tR3Q5S
	V0q0cOe+8tF0fpA9FJ4PLPT/0UoVDMnUzmg+Mjpn2rMbKAcfWoi2W2lv6pRpovNdjoF0
	w5MZwUPACwBSAWEt3grtjoe4sCld332Is4irYuvVLZYFPvykGpGBvt78TdnNvCNs4kJM
	+gsDCVEG6vL7rXnXJdO3UK6aXJqaXFcm5RmszOS2LaiePIDECkGDgUZZCqOk1sXkImaS
	37Py0NKwRfHeujfAsXsRYgooo2nAXy0ZB2ke2c89z2r6DSibWEh3mXPitxdt0INzbkAx
	/rKQ==
MIME-Version: 1.0
X-Received: by 10.236.72.70 with SMTP id s46mr3346762yhd.145.1401453366322;
	Fri, 30 May 2014 05:36:06 -0700 (PDT)
Received: by 10.170.143.138 with HTTP; Fri, 30 May 2014 05:36:06 -0700 (PDT)
In-Reply-To: <CAJTo0LaNbvwf+2yEnPorOj81N4fSJwfYOxppqHcrX-hUHabBeA@mail.gmail.com>
References: <CANJXcUap4aox3bhkxzq+EqTtZHokfMX6cqaao5o0oLqqRE+4SA@mail.gmail.com>
	<CAJTo0LaNbvwf+2yEnPorOj81N4fSJwfYOxppqHcrX-hUHabBeA@mail.gmail.com>
Date: Fri, 30 May 2014 18:06:06 +0530
Message-ID: <CANJXcUaZm=4XeG4PDZwbaX+DtCo-fh+-aWWD49EsjOVmOuiN0Q@mail.gmail.com>
From: Kashyap Gada <gada.kashyap@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Source Command Permission Denied
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
X-List-Received-Date: Fri, 30 May 2014 12:36:17 -0000
Content-Type: multipart/alternative; boundary=20cf300514be11ac4a04fa9d4a59

--20cf300514be11ac4a04fa9d4a59
Content-Type: text/plain; charset=UTF-8

Thank You. I did the following and it worked.

First Found the drive using

$ sudo fdisk -l

Then Selected the desired drive and create a directory in the /mnt path

$ sudo mkdir hda

Now Mount the sda5(can be different for you)

$ sudo mount -t auto -v /dev/sda5 /mnt/hda

after the work is done can unmount using

sudo unmount /dev/sda5 (not checked this part yet)

Thanks
Kashyap Gada
smartsys india
gada(.)kashyap(@)gmail(.)com

$sudo mount -t


On Fri, May 30, 2014 at 4:40 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 30 May 2014 05:06, Kashyap Gada <gada.kashyap@gmail.com> wrote:
> >> bash:
> >> /media/kashyap/3E0800DC08009555/yocto/poky/scripts/oe-setup-builddir:
> >> Permission denied
>
> You appear to be running Yocto on external media and your system has
> likely mounted it with the "noexec" flags to prevent malicious
> programs.  You'll want to remount it with the "exec" flag, using mount
> -o exec,remount /media/kashyap/3E0800DC08009555 should do the trick.
>
> Ross
>

--20cf300514be11ac4a04fa9d4a59
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank You. I did the following and it worked.<div><br></di=
v><div>First Found the drive using</div><div><br></div><div>$ sudo fdisk -l=
</div><div><br></div><div>Then Selected the desired drive and create a dire=
ctory in the /mnt path</div>
<div><br></div><div>$ sudo mkdir hda</div><div><br></div><div>Now Mount the=
 sda5(can be different for you)</div><div><br></div><div>$ sudo mount -t au=
to -v /dev/sda5 /mnt/hda</div><div><br></div><div>after the work is done ca=
n unmount using=C2=A0</div>
<div><br></div><div>sudo unmount /dev/sda5 (not checked this part yet)</div=
><div><br></div><div>Thanks <br>Kashyap Gada</div><div>smartsys india</div>=
<div>gada(.)kashyap(@)gmail(.)com</div><div><br></div><div>$sudo mount -t=
=C2=A0</div>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Fri,=
 May 30, 2014 at 4:40 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;<=
/span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">On 30 May 2014 05:06, Kashyap Gada &lt;<a hr=
ef=3D"mailto:gada.kashyap@gmail.com">gada.kashyap@gmail.com</a>&gt; wrote:<=
br>

&gt;&gt; bash:<br>
&gt;&gt; /media/kashyap/3E0800DC08009555/yocto/poky/scripts/oe-setup-buildd=
ir:<br>
&gt;&gt; Permission denied<br>
<br>
You appear to be running Yocto on external media and your system has<br>
likely mounted it with the &quot;noexec&quot; flags to prevent malicious<br=
>
programs. =C2=A0You&#39;ll want to remount it with the &quot;exec&quot; fla=
g, using mount<br>
-o exec,remount /media/kashyap/3E0800DC08009555 should do the trick.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--20cf300514be11ac4a04fa9d4a59--
