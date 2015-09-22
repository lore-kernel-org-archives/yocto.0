Return-Path: <mayank77fromindia@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B93B8E00947; Tue, 22 Sep 2015 00:22:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mayank77fromindia[at]gmail.com)
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
	*      [209.85.218.46 listed in list.dnswl.org]
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9501AE00474
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 00:22:40 -0700 (PDT)
Received: by oiev17 with SMTP id v17so653385oie.1
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 00:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=8b1A+Z1vBxy3FE4CepfxwdhriRzHUXax5Y0d8Nkqgyo=;
	b=Xdz4hcvxVtBV8pO8BqFy/oAMo+nLRR0y+vnvsSErEuM4gKK5jSdEioM2VoeEK6QIVT
	6XGs4lvA/hW6u34Upz7jW34PVkB/9HsSQ4arP2gT03kBUj3SWKfshU5riF1ewMnd+/TN
	3Frlgpnvrf7vT7lUAEIggOpwnHgfTWlQQmQkZxkYD/maJcKNtMbb7vKiBt/8V92lt0Nf
	qJjw4POI4eSSRaHbXhTRCftumKqhCdaQdZcd/OE2clyQ400JdH1/pUjUIUbX/ZdpfbJk
	zFXzFtMqqdh5ULTd+DQCHRHW0M+Iq7pueuCrJu1HmdU96QsJzFck6IR9wil5VfsS/9JR
	u/pA==
MIME-Version: 1.0
X-Received: by 10.202.189.132 with SMTP id n126mr11262429oif.120.1442906560594;
	Tue, 22 Sep 2015 00:22:40 -0700 (PDT)
Received: by 10.202.61.67 with HTTP; Tue, 22 Sep 2015 00:22:40 -0700 (PDT)
In-Reply-To: <05A69F34-5099-4FB9-873D-CF7EB2870822@gmail.com>
References: <CAKjpqyLYek-qdQh-ZbrHwZ5xVw-BuLNw3R9Up8Sh1xPwj6y84w@mail.gmail.com>
	<05A69F34-5099-4FB9-873D-CF7EB2870822@gmail.com>
Date: Tue, 22 Sep 2015 12:52:40 +0530
Message-ID: <CAKjpqyJcxxnRRSBsYAM501mT3XiY3u7NJV1sn8Q+OceFpxU7bQ@mail.gmail.com>
From: Mayank Agarwal <mayank77fromindia@gmail.com>
To: Khem Raj <raj.khem@gmail.com>, yocto@yoctoproject.org
Subject: Re: error in do_rootfs
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
X-List-Received-Date: Tue, 22 Sep 2015 07:22:44 -0000
Content-Type: multipart/alternative; boundary=001a113d674afd08e1052050dcbd

--001a113d674afd08e1052050dcbd
Content-Type: text/plain; charset=UTF-8

binaries are there in qemux/usr/lib/gstreamer-1.0 but they are not getting
installed in final image.

is this empty by any chance:
i didn't get you.

Regards
Mayank

On Tue, Sep 22, 2015 at 12:42 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> > On Sep 22, 2015, at 12:08 AM, Mayank Agarwal <
> mayank77fromindia@gmail.com> wrote:
> >
> > Hi
> >
> > While installing gstreamer-1.0 i am facing following errors in do_rootfs:
> >
> > Configuring xfsprogs-mkfs.
> > Configuring packagegroup-rdk-oss-mediaserver.
> > Configuring gst-plugins-bad-linsys.
> > Configuring gst-plugins-good-isomp4.
> > Collected errors:
> >  * opkg_install_cmd: Cannot install package gst-plugins-base-version.
>
> is this empty by any chance ?
>
>

--001a113d674afd08e1052050dcbd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">binaries are there in qemux/usr/lib/gstreamer-1.0 but they=
 are not getting installed in final image.<div><br></div><div>is this empty=
 by any chance:</div><div>i didn&#39;t get you.<br><div><br></div><div>Rega=
rds</div><div>Mayank</div></div></div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">On Tue, Sep 22, 2015 at 12:42 PM, Khem Raj <span dir=
=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.kh=
em@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span =
class=3D""><br>
&gt; On Sep 22, 2015, at 12:08 AM, Mayank Agarwal &lt;<a href=3D"mailto:may=
ank77fromindia@gmail.com">mayank77fromindia@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi<br>
&gt;<br>
&gt; While installing gstreamer-1.0 i am facing following errors in do_root=
fs:<br>
&gt;<br>
&gt; Configuring xfsprogs-mkfs.<br>
&gt; Configuring packagegroup-rdk-oss-mediaserver.<br>
&gt; Configuring gst-plugins-bad-linsys.<br>
&gt; Configuring gst-plugins-good-isomp4.<br>
&gt; Collected errors:<br>
&gt;=C2=A0 * opkg_install_cmd: Cannot install package gst-plugins-base-vers=
ion.<br>
<br>
</span>is this empty by any chance ?<br>
<br>
</blockquote></div><br></div>

--001a113d674afd08e1052050dcbd--
