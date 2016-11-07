Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4E04E009A5; Mon,  7 Nov 2016 06:27:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0320EE00831
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2016 06:27:31 -0800 (PST)
Received: by mail-qk0-f178.google.com with SMTP id q130so177759194qke.1
	for <yocto@yoctoproject.org>; Mon, 07 Nov 2016 06:27:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fpm7nE6UYLfV7gqTg0Tb91utFB731dgLhJabouvOBf8=;
	b=RpWUU+XTHr5iFTKD0B1xW/Pj8gA/32FD6S//FLuMblMFefGK/UdiZNmiMWOBhK1IL2
	ibWFOL5XkB3IQPjDUbb/nwB4fi6FFm+NWHdOMnCTv0byyxS5y/fFED3X3RhuRshvrHxz
	Nis53S2Um+1qOZw/vc3Z/kbqzgHMKQi9Mh+ArwDWQYX0vRsWl699iz6oHdUlApI3gToI
	9/4ky8CkzVf6FmA8fNi/OKDqtx+lY1GAMs+0KRbNUXsGwP0kVVd/ReEpTcydcaSfk1pq
	t2T4q4JJbZNmK+mZPZEu2sZagCX3qKrsv2zsSAcaWasTZQBqu4VRMpcqY+dC0IQCWQ1l
	/psw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fpm7nE6UYLfV7gqTg0Tb91utFB731dgLhJabouvOBf8=;
	b=Ne0Tm1OHWWErXWgkxGb27z8EpjIhXFNoVJrec8wLVOUkQdnDWuFxTTGpB4AqPO0EMf
	Ybe2d74TB9ay7EFFcLGz0rDQOQZVGubuQnJYdMgFq0U3qes6v5sODKGaZdqZ2DJJSI6B
	zLKZIbCMvvYbthO8SXTt7g41dzy7LWCOrDyN/lLWMQgtZqBT97aG2oR7ZGzfYuFpgQMW
	TZXe6czSxUPT+L9PSo/IS9TdnT7tgMTSbOngm1EFtDzRGFjn1gh7Et/Te2mfR9N5PmFf
	aL/qvTZuqijA/iuQOUsJCYJPrkJmEpE9jjJzi3MrfPtiM9YOFW40JfM9BrOfGkDmcTWZ
	4gcQ==
X-Gm-Message-State: ABUngvcpxR1kzxMFdrVQ2VyolRYqpMEaCVW5JsigoAyz26HknzpYlPB7SU+rzsl1sJUVVvJs+9kmE7ywcV6F1K2m
X-Received: by 10.55.31.157 with SMTP id n29mr6684295qkh.221.1478528850358;
	Mon, 07 Nov 2016 06:27:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.85.136 with HTTP; Mon, 7 Nov 2016 06:27:09 -0800 (PST)
In-Reply-To: <CAFNP8OvOhcd9tFTWS4NhS2GMfcHyFp0MOtDy5y4fYscMAdPvnA@mail.gmail.com>
References: <c183wyprgqw24wdj3xxijdsr.1478091740228@email.android.com>
	<CAFNP8OvOhcd9tFTWS4NhS2GMfcHyFp0MOtDy5y4fYscMAdPvnA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 7 Nov 2016 14:27:09 +0000
Message-ID: <CAJTo0La+HJyZ47ezP5kRqq1DO=G0WJzZaJZ0G692E_PX1GGGJQ@mail.gmail.com>
To: Scott Rifenbark <srifenbark@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.2 Morty supported Linux Distros
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
X-List-Received-Date: Mon, 07 Nov 2016 14:27:33 -0000
Content-Type: multipart/alternative; boundary=001a1147f228ea8e260540b6d290

--001a1147f228ea8e260540b6d290
Content-Type: text/plain; charset=UTF-8

Hi Scott,

On 3 November 2016 at 20:21, Scott Rifenbark <srifenbark@gmail.com> wrote:

> See http://www.yoctoproject.org/docs/2.2/ref-manual/ref-
> manual.html#detailed-supported-distros and let me know if this is okay.
> If so, I will make sure the same commit is on my yocto-docs/morty branch.
> I updated master only for now
>


Both of the suse entries should be styled a "openSUSE <version>", the
change of case is due to technical nonsense and not what the user will see.

Apart from that, looks good.

Ross

--001a1147f228ea8e260540b6d290
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div>Hi Scott,</div><div><br></=
div><div class=3D"gmail_quote">On 3 November 2016 at 20:21, Scott Rifenbark=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:srifenbark@gmail.com" target=3D"_b=
lank">srifenbark@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-l=
eft-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div d=
ir=3D"ltr">See <a href=3D"http://www.yoctoproject.org/docs/2.2/ref-manual/r=
ef-manual.html#detailed-supported-distros" target=3D"_blank">http://www.yoc=
toproject.org/<wbr>docs/2.2/ref-manual/ref-<wbr>manual.html#detailed-<wbr>s=
upported-distros</a> and let me know if this is okay.=C2=A0 If so, I will m=
ake sure the same commit is on my yocto-docs/morty branch.=C2=A0 I updated =
master only for now<br></div></blockquote><div><br></div><div>=C2=A0<br></d=
iv></div>Both of the suse entries should be styled a &quot;openSUSE &lt;ver=
sion&gt;&quot;, the change of case is due to technical nonsense and not wha=
t the user will see.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Apart from that, looks good.</div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1147f228ea8e260540b6d290--
