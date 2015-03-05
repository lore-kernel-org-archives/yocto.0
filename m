Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D88BE008CF; Thu,  5 Mar 2015 06:20:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
Received: from mail-qc0-f170.google.com (mail-qc0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F365E00718
	for <yocto@yoctoproject.org>; Thu,  5 Mar 2015 06:20:12 -0800 (PST)
Received: by qcwb13 with SMTP id b13so5492905qcw.9
	for <yocto@yoctoproject.org>; Thu, 05 Mar 2015 06:20:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=kzpehirVYvdGue1bhKzHORc2DMovUyyl8sKCrpgCIoo=;
	b=YhPKm/S07oyonKKpa0JRk0xeHy6dNqSNpYUYnc844VW46JiIw0zou2UhIh0ocAi4Oa
	4zrhlVVp19yyfAc00mvNOxbkSCJyelGQtMiBziQUZolAyaThTYMc08ySNjKhwapKdsBd
	QdkN6LICY+bUhN/E65JBl9ZN1twdS7us/TUndrseQVeN+UArODJ7w1aP8aquvvcsXsvI
	MO6yLl76tcRMLX+qcw8gYvATUW1IHrx5in1Q7hmSuYyeU2xmc1nXRV4Eic4GcTu3Flkm
	vXnaCdY3SpKiWwLBHF3GdM91esk5U8NCAq67sBW0Lzg1/M4y2rqAcCthHd2fKYaM2lZG
	l7Dw==
X-Gm-Message-State: ALoCoQk1Q1zY9KYFF7UlcDT88wcVJTJ7wchY0vNLnJtV9c5mlopJ1RZI08ZGGOSSJSnA1Q1ekEeF
X-Received: by 10.55.24.160 with SMTP id 32mr1014459qky.23.1425565212341; Thu,
	05 Mar 2015 06:20:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Thu, 5 Mar 2015 06:19:52 -0800 (PST)
In-Reply-To: <54F863EB.3030604@mlbassoc.com>
References: <54F798FD.4090200@mlbassoc.com>
	<CAJTo0Lb+8aUN8Ufgx-5W6zfs=V_CK=eY2DgeeGeGJUyz0u22gA@mail.gmail.com>
	<54F8492B.2010205@mlbassoc.com>
	<CAJTo0LbHPUc7Xrmx06o3w4Yaf7xynR1Pb33U75ONzvziC0Wuww@mail.gmail.com>
	<54F851F5.8070409@mlbassoc.com> <54F85B4C.4040403@mlbassoc.com>
	<CAP71Wjz4H2c971qGEZCgW2_pbP-Vs2rpQhiDNy_OWOhQqpz7MA@mail.gmail.com>
	<54F85DB5.4000901@mlbassoc.com>
	<CAP71WjxLNWnEcGtbFDkm6af1MK5LkpPZhujcZ5mN49jRf=MkYg@mail.gmail.com>
	<54F863EB.3030604@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 5 Mar 2015 14:19:52 +0000
Message-ID: <CAJTo0LZ5Jj6RrmAEVmJFE-YzKRaahp_mYamXUfoiMwnBy=B0pw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: New gst-player
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
X-List-Received-Date: Thu, 05 Mar 2015 14:20:16 -0000
Content-Type: multipart/alternative; boundary=001a114414621637fa05108b449e

--001a114414621637fa05108b449e
Content-Type: text/plain; charset=UTF-8

On 5 March 2015 at 14:10, Gary Thomas <gary@mlbassoc.com> wrote:

> Given that it's the same file being played on the same hardware,
> shouldn't both programs need to be doing the same conversions, etc?
>

In theory, yes.  I note that in this pipeline GStreamer is using libav to
decode the video and then displaying it using GL, so maybe that's a
difference and mplayer isn't using GL but something else.

You can manually construct a pipeline using 'gst-launch-1.0 playbin
uri=file:///... video-sink=[some sink name]' to try different sinks.

Ross

--001a114414621637fa05108b449e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 March 2015 at 14:10, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":2c8" class=3D"a3s" style=
=3D"overflow:hidden">Given that it&#39;s the same file being played on the =
same hardware,<br>
shouldn&#39;t both programs need to be doing the same conversions, etc?<div=
 class=3D"HOEnZb"></div></div></blockquote></div><br>In theory, yes.=C2=A0 =
I note that in this pipeline GStreamer is using libav to decode the video a=
nd then displaying it using GL, so maybe that&#39;s a difference and mplaye=
r isn&#39;t using GL but something else.</div><div class=3D"gmail_extra"><b=
r></div><div class=3D"gmail_extra">You can manually construct a pipeline us=
ing &#39;gst-launch-1.0 playbin uri=3Dfile:///... video-sink=3D[some sink n=
ame]&#39; to try different sinks.</div><div class=3D"gmail_extra"><br></div=
><div class=3D"gmail_extra">Ross</div></div>

--001a114414621637fa05108b449e--
