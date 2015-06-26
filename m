Return-Path: <jon.szymaniak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2337EE00A45; Fri, 26 Jun 2015 07:43:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jon.szymaniak[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67FE3E00A2C
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 07:43:15 -0700 (PDT)
Received: by pdjn11 with SMTP id n11so76369066pdj.0
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 07:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=7zcQ6rQMupAedWhyR978ehbesZWyVMAlqsJBjpV3S9w=;
	b=Gr8+cK4IY/oU8k+G8Tmf9gfZWt5KuMAYp+WajeINeh4nBJfTdbMO3JWBJ8JNmsBbeq
	/0xKdw6wcMPbE2BN5IeWYg7Lqv/2GPfdPgjEX5DWLgixv+1f2ONPJ2zPLptGzV096NTa
	77va9xPSfEUqxT+e19XpZS3S2sIgqOZNihVCfWaHtN7+W8m3dCca1RwjeB6jKsVKAN3i
	e8TkpQL4eff9iRRnymLaUWoOlDlHduLKKf96iUmqUB42N2ceHuNbNsVIdjfpLAZraDUH
	oejeztLkkqdjZYIy9oU/lfdMXOnUglf0ks71SLTIgQv1KUZqXr8799QDPjPw5UBlBw8b
	gvVQ==
X-Received: by 10.70.54.164 with SMTP id k4mr4107210pdp.61.1435329795333; Fri,
	26 Jun 2015 07:43:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.66.157.98 with HTTP; Fri, 26 Jun 2015 07:42:55 -0700 (PDT)
In-Reply-To: <CAJTo0LaJuRxg86a9rF8LiW2xB=cjt9px4+7NLQ0fdy94PwXLVA@mail.gmail.com>
References: <1435292188-29514-1-git-send-email-jon.szymaniak@gmail.com>
	<CAJTo0LaKZsvvC4hKZrJiX6r2=Q+JL48+i3fBVQauDDYNtPn+og@mail.gmail.com>
	<CANge7vUQG3p3L7R5ZiZJJ62=zsYoGdjieiHwHktPD7yQ-ZsPag@mail.gmail.com>
	<CAJTo0LaJuRxg86a9rF8LiW2xB=cjt9px4+7NLQ0fdy94PwXLVA@mail.gmail.com>
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Fri, 26 Jun 2015 10:42:55 -0400
Message-ID: <CANge7vX_DE2vaBrhuc1qyr75AsM8gFaZLYsSbZzwtiYA8oK6vQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: Fetch a zip instead of cloning a git repo
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
X-List-Received-Date: Fri, 26 Jun 2015 14:43:17 -0000
Content-Type: multipart/alternative; boundary=089e0158c20e9623a305196cc2fa

--089e0158c20e9623a305196cc2fa
Content-Type: text/plain; charset=UTF-8

On Fri, Jun 26, 2015 at 10:19 AM, Burton, Ross <ross.burton@intel.com>
wrote:

>
>
> On 26 June 2015 at 15:16, Jon Szymaniak <jon.szymaniak@gmail.com> wrote:
>
>> I'm open to other suggestions as well, as this was just a first stab at
>> it. I've been seeing that cloning this git repo containing binary firmware
>> blobs takes an absurd amount of time, if it even finishes at all
>> successfully.
>>
>
> I believe github offers hosting of "release" tarballs too, so upstream
> could take advantage of that.  Having verified checksums of firmware is
> useful from a security point of view as you can't really inspect the
> sources for it...
>

That's actually what I looked for first, and definitely would use that if
it were available.

Generally when you apply a tag or manually create a release on GitHub, and
etnry under "Tags" or "Releases" is created.  It will automatically provide
a zip and/or tar.gz of the repo sources -- I suspect this would suffer from
the same risk of changing checksums that you expressed concern over.
Therefore, it would require the upstream maintainer to upload a specific
.tar.gz, preferably with .sha256sum and .md5sum files.

Back to the git depth point... why is "--depth 1" not the default for all
cases?  Could anyone elaborate on some use cases where we'd actually want
the entire history for builds?

- Jon

--089e0158c20e9623a305196cc2fa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Jun 26, 2015 at 10:19 AM, Burton, Ross <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br><div dir=3D"ltr=
"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><span class=3D"=
">On 26 June 2015 at 15:16, Jon Szymaniak <span dir=3D"ltr">&lt;<a href=3D"=
mailto:jon.szymaniak@gmail.com" target=3D"_blank">jon.szymaniak@gmail.com</=
a>&gt;</span> wrote:<br></span><span class=3D""><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div class=3D"gmail_extra">I&#39;m open to other suggestions as well, a=
s this was just a first stab at it. I&#39;ve been seeing that cloning this =
git repo containing binary firmware blobs takes an absurd amount of time, i=
f it even finishes at all successfully.<br></div></blockquote></span></div>=
<br>I believe github offers hosting of &quot;release&quot; tarballs too, so=
 upstream could take advantage of that.=C2=A0 Having verified checksums of =
firmware is useful from a security point of view as you can&#39;t really in=
spect the sources for it...</div><span class=3D"HOEnZb"></span></div></bloc=
kquote><div><br></div><div>That&#39;s actually what I looked for first, and=
 definitely would use that if it were available.<br><br>Generally when you =
apply a tag or manually create a release on GitHub, and etnry under &quot;T=
ags&quot; or &quot;Releases&quot; is created.=C2=A0 It will automatically p=
rovide a zip and/or tar.gz of the repo sources -- I suspect this would suff=
er from the same risk of changing checksums that you expressed concern over=
.=C2=A0 Therefore, it would require the upstream maintainer to upload a spe=
cific .tar.gz, preferably with .sha256sum and .md5sum files.<br><br></div><=
div>Back to the git depth point... why is &quot;--depth 1&quot; not the def=
ault for all cases?=C2=A0 Could anyone elaborate on some use cases where we=
&#39;d actually want the entire history for builds?<br><br></div><div>- Jon=
<br></div></div><br></div></div>

--089e0158c20e9623a305196cc2fa--
