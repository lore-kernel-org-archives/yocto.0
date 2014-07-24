Return-Path: <babu.anoop@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C793DE0079B; Thu, 24 Jul 2014 00:07:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (babu.anoop[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.48 listed in list.dnswl.org]
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5556E0079E
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 00:06:52 -0700 (PDT)
Received: by mail-qa0-f48.google.com with SMTP id m5so2480452qaj.35
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 00:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=dDLIq20mj+Wg8Pjm3MQ0zAJJaaj0s2yp0svy3FwO7Ro=;
	b=TPZvX58dxwhEoEDo9pjWxcpAqFAFdFGSAqUwWqS2j0lnMBI3mjQoahNVZhsDjaenxR
	XF+2P+yNLugn/0J5c44o+urNeMhEWg2Zfg61bLlZYpD5wQdyDzK+PkwXc5MA2YuogQh/
	AaFxJggW0jwZQJcoQOmX7IH4GrfHvKvMDVwhZ6LGHxR0Xh1MgRJACC+bYxvzJkGi6e0J
	jNhPemeMqdgjEgQhT+cpFZBNwm3qCtZ81t6Yeo8sWlcfamaR3haOhlR9jVBWb/X29alF
	1B4d/9XuQ5L2htoLwfRHc0muB92PQq0UgfFiN9aMVWHlkWWld0VfhXbNYYSHPBNFDSZl
	DAig==
MIME-Version: 1.0
X-Received: by 10.224.131.71 with SMTP id w7mr11315018qas.91.1406185611296;
	Thu, 24 Jul 2014 00:06:51 -0700 (PDT)
Received: by 10.140.25.238 with HTTP; Thu, 24 Jul 2014 00:06:51 -0700 (PDT)
In-Reply-To: <CAJTo0LYO7A9qU5jAguk=x7jd3QqapbXeKeN6P4=xGVO=zyZz5A@mail.gmail.com>
References: <loom.20140723T084046-919@post.gmane.org>
	<CAJTo0LYO7A9qU5jAguk=x7jd3QqapbXeKeN6P4=xGVO=zyZz5A@mail.gmail.com>
Date: Thu, 24 Jul 2014 12:36:51 +0530
Message-ID: <CAB0rWF=gJEWVXC94dqrWrONouEJOhT_T5i8sw_-TQbi3WEm5pw@mail.gmail.com>
From: Anoop Babu <babu.anoop@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailman-Approved-At: Fri, 25 Jul 2014 08:17:41 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Bitbake Error - rmp-native task failure
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
X-List-Received-Date: Thu, 24 Jul 2014 07:07:18 -0000
Content-Type: multipart/alternative; boundary=001a11c28154d9876f04feeb1993

--001a11c28154d9876f04feeb1993
Content-Type: text/plain; charset=UTF-8

thank you I applied the patch the earlier stated error is not seen . but I
have hit on another error.

Patch redhat-portability.diff does not apply (enforce with -f)
ERROR: Function failed: patch_do_patch
ERROR: Logfile of failure stored in:
/home/sfm/yocto_temp/build/tmp/work/i686-linux/elfutils-native/0.158-r0/temp/log.do_patch.3531
ERROR: Task 993
(virtual:native:/home/sfm/yocto_temp/poky/meta/recipes-devtools/elfutils/
elfutils_0.158.bb, do_patch) failed with exit code '1'

have come across this error?

Best regards
     A.B
P Please think about the environment before printing this e-mail

*7 Switch off as you go | qAlways recycle | P Save a tree...please don't
print this e-mail unless you really need to.*


On Thu, Jul 24, 2014 at 3:14 AM, Burton, Ross <ross.burton@intel.com> wrote:

> On 23 July 2014 07:51, Anoop <babu.anoop@gmail.com> wrote:
> > patch: **** Can't create file /tmp/tmpT3pUSD/poMZnbmM : No such file or
> > directory
>
> I just re-read this mail and remembered that this was a different
> problem with rpm-native, and I fixed it in oe-core/poky.  Their fork
> of poky has been updated to incorporate the fix but if you can't
> upgrade then cherry-pick this commit:
>
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=442efc3959a65fc9da73f79b3afda95d1cffadf3
>
> Sorry for the wrong reply at first, there are several ways that the
> meta-tizen rpm can fail... :/
>
> Ross
>

--001a11c28154d9876f04feeb1993
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">thank you I applied the patch the earlier stated error is =
not seen . but I have hit on another error.<div><br></div><div><div>Patch r=
edhat-portability.diff does not apply (enforce with -f)</div><div>ERROR: Fu=
nction failed: patch_do_patch</div>
<div>ERROR: Logfile of failure stored in: /home/sfm/yocto_temp/build/tmp/wo=
rk/i686-linux/elfutils-native/0.158-r0/temp/log.do_patch.3531</div><div>ERR=
OR: Task 993 (virtual:native:/home/sfm/yocto_temp/poky/meta/recipes-devtool=
s/elfutils/<a href=3D"http://elfutils_0.158.bb">elfutils_0.158.bb</a>, do_p=
atch) failed with exit code &#39;1&#39;</div>
</div><div><br></div><div>have come across this error?</div></div><div clas=
s=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"ltr">Best regards<br>=
=C2=A0=C2=A0=C2=A0=C2=A0 A.B<br><div><span lang=3D"EN-SG" style=3D"font-siz=
e:18pt;font-family:Webdings;color:rgb(0,127,0)">P</span><span lang=3D"EN-SG=
" style=3D"font-family:arial;font-size:small;color:rgb(36,64,97)">=C2=A0</s=
pan><span lang=3D"EN-SG" style=3D"font-size:7pt;font-family:Verdana,sans-se=
rif;color:rgb(0,127,0)">Please think about the environment before printing =
this e-mail</span><br>
</div><div><span lang=3D"EN-SG" style=3D"font-size:7pt;font-family:Verdana,=
sans-serif;color:rgb(0,127,0)"><br></span></div><div><span lang=3D"EN-SG" s=
tyle=3D"font-size:7pt;font-family:Verdana,sans-serif;color:rgb(0,127,0)"><i=
 style=3D"color:rgb(34,34,34);font-family:&#39;comic sans ms&#39;,sans-seri=
f;font-size:small"><p style=3D"margin:0px 0px 12pt;font-family:arial,sans-s=
erif;font-style:normal;display:inline!important">
<b style=3D"font-size:12.727272033691406px"><span lang=3D"EN-GB" style=3D"f=
ont-size:24pt;font-family:&#39;Wingdings 3&#39;;color:green">7</span></b><s=
pan lang=3D"EN-GB" style=3D"color:navy;font-size:11pt;font-family:Calibri,s=
ans-serif">=C2=A0</span><span lang=3D"EN-GB" style=3D"color:rgb(0,32,96);fo=
nt-family:Calibri,sans-serif"><font size=3D"1">Switch off as you go=C2=A0|<=
/font></span><span lang=3D"EN-GB" style=3D"color:gray;font-size:11pt;font-f=
amily:Calibri,sans-serif">=C2=A0</span><b style=3D"font-size:12.72727203369=
1406px"><span lang=3D"EN-GB" style=3D"font-size:24pt;font-family:Webdings;c=
olor:green">q</span></b><font size=3D"1"><span lang=3D"EN-GB" style=3D"colo=
r:rgb(0,32,96);font-family:Calibri,sans-serif">Always recycle=C2=A0|</span>=
<span lang=3D"EN-GB" style=3D"color:gray;font-family:Calibri,sans-serif">=
=C2=A0</span></font><b style=3D"font-size:12.727272033691406px"><span lang=
=3D"EN-GB" style=3D"font-size:24pt;font-family:Webdings;color:green">P</spa=
n></b><span lang=3D"EN-GB" style=3D"color:navy;font-size:11pt;font-family:C=
alibri,sans-serif">=C2=A0</span><span lang=3D"EN-GB" style=3D"color:rgb(0,3=
2,96);font-size:11pt;font-family:Calibri,sans-serif">Save a tree...please d=
on&#39;t print this e-mail unless you really need to.</span></p>
</i><br></span></div></div></div>
<br><br><div class=3D"gmail_quote">On Thu, Jul 24, 2014 at 3:14 AM, Burton,=
 Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=
=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">
<div class=3D"">On 23 July 2014 07:51, Anoop &lt;<a href=3D"mailto:babu.ano=
op@gmail.com">babu.anoop@gmail.com</a>&gt; wrote:<br>
&gt; patch: **** Can&#39;t create file /tmp/tmpT3pUSD/poMZnbmM : No such fi=
le or<br>
&gt; directory<br>
<br>
</div>I just re-read this mail and remembered that this was a different<br>
problem with rpm-native, and I fixed it in oe-core/poky. =C2=A0Their fork<b=
r>
of poky has been updated to incorporate the fix but if you can&#39;t<br>
upgrade then cherry-pick this commit:<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D442e=
fc3959a65fc9da73f79b3afda95d1cffadf3" target=3D"_blank">http://git.yoctopro=
ject.org/cgit/cgit.cgi/poky/commit/?id=3D442efc3959a65fc9da73f79b3afda95d1c=
ffadf3</a><br>

<br>
Sorry for the wrong reply at first, there are several ways that the<br>
meta-tizen rpm can fail... :/<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--001a11c28154d9876f04feeb1993--
