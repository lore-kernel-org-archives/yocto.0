Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2228E00BD0; Fri, 23 Jun 2017 02:25:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f195.google.com (mail-yb0-f195.google.com
	[209.85.213.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A46AEE00BDF
	for <yocto@lists.yoctoproject.org>;
	Fri, 23 Jun 2017 02:25:34 -0700 (PDT)
Received: by mail-yb0-f195.google.com with SMTP id g206so1853781yba.2
	for <yocto@lists.yoctoproject.org>;
	Fri, 23 Jun 2017 02:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=EmCQecwNIRci7EEubLmECqeRWIstufvs6ahBeI3yJxI=;
	b=A9NeXscPrYyM9Eweq8nYHFe4nRgXZZKKomDDy0UKTtwjn4LWT8c5a4vICq246PYtKF
	D9zlIWClsryPQsSiS3yjRFC5OZPyy9ne4AnLhfRu6U59U9Kp3qK0Ooi4MjN3zUNsOKe0
	BBe9YCsI7MRSedoO9wfUdOgYqidfqh37q+e4A0/59fq8OLfIQ18b8HP+z1H3jr3KDp3x
	da8S1cQTuRNN83QV+aqZ292z5oNZWuNK/G/81Sc8mW0mbZdD4cs4t6l4tsK8A0G8wvmI
	uXqNbhp6aNLH14XtNd1i110qFOsTLADw2u91bGuUYfi7x/fuV+Ax08+zHrhB4E2URRtA
	M2Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=EmCQecwNIRci7EEubLmECqeRWIstufvs6ahBeI3yJxI=;
	b=A/dB1egstohbst+sed4NkDLFHOYksj6VCZ5CUDDk7xE8JMXS8yhU2mOcNnDi2fGzL3
	bMNrw3wkSLz9LvOqV8bG45XZBW7wRuk5Cc8RdrGsD64Zck7su0XfcMZhudJkCv6B8B5w
	zMx+HsYLHYJDsnOTSlS7WXhne9CHCxuVP5EyhYV0fFoqe/Vi7euDz732ap/8z300Y+WL
	IIVLnZAyjzIOgCp9Jp09yzCK4cTDbep/riyo7qogIrSkMcg64lqyChCHbmPq8ZAxtmi3
	3jP3JeBrTnCjQdZ0JXbUcH62WDaYCa3OyWz23HVBLqmgEeR1Z8CWd5XMGQCGbokCfawi
	bBzA==
X-Gm-Message-State: AKS2vOzn8pgvAjuVMBjE0X71Ma6x6VHUVg2YrLvQ0bV6O83EPp86B9sc
	CefBjAce+Nk/orFxQYshpjAp1CRQTw==
X-Received: by 10.37.228.69 with SMTP id b66mr5123252ybh.28.1498209933495;
	Fri, 23 Jun 2017 02:25:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.181.204 with HTTP; Fri, 23 Jun 2017 02:25:33 -0700 (PDT)
In-Reply-To: <CA+chaQcV+xdNvGxpuB+p9adLiRBH+84DsBLf4G3jC4aRE_RaSw@mail.gmail.com>
References: <20170612162218.11449-1-Martin.Jansa@gmail.com>
	<CAJ86T=ULdJSPwcCzRGpLPAR0rzEPsFcx8YxFmBHqGO-XB4130g@mail.gmail.com>
	<CAJTo0LbD0BZ=kEKfGTqY+Ae=HsmDdVZj_4NJKhe8eW+NHrrVag@mail.gmail.com>
	<CA+chaQcV+xdNvGxpuB+p9adLiRBH+84DsBLf4G3jC4aRE_RaSw@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 23 Jun 2017 11:25:33 +0200
Message-ID: <CA+chaQcWbm51VOvz0cnSVswz5vzzjRcdKvtgdiAtj4JHdRBUcA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [PATCH][meta-gplv2] gnutls: add use-pkg-config-to-locate-zlib.patch
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
X-List-Received-Date: Fri, 23 Jun 2017 09:25:37 -0000
Content-Type: multipart/alternative; boundary="001a114e363ee2954c05529d2eb9"

--001a114e363ee2954c05529d2eb9
Content-Type: text/plain; charset="UTF-8"

ERROR: gnutls-3.3.27-r0 do_fetch: Fetcher failure for URL:
'file://correct_rpl_gettimeofday_signature.patch'. Unable to fetch URL
from any source.


On Fri, Jun 23, 2017 at 11:25 AM, Martin Jansa <martin.jansa@gmail.com>
wrote:

> Probably yes as it got broken again yesterday:
>
>
> On Mon, Jun 12, 2017 at 9:13 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>>
>> On 12 June 2017 at 20:04, Andre McCurdy <armccurdy@gmail.com> wrote:
>>
>>> Would it be better to just make the meta-gplv2 gnutls recipe self
>>> contained and stop trying to share a .inc file and patches with
>>> oe-core?
>>>
>>
>> Yes.
>>
>> Ross
>>
>>
>

--001a114e363ee2954c05529d2eb9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre class=3D"gmail-console-output" style=3D"box-sizing:bo=
rder-box;white-space:pre-wrap;word-wrap:break-word;margin-top:0px;margin-bo=
ttom:0px;color:rgb(51,51,51);font-size:14px">ERROR: gnutls-3.3.27-r0 do_fet=
ch: Fetcher failure for URL: &#39;<a style=3D"box-sizing:border-box;word-wr=
ap:break-word;color:rgb(92,53,102)">file://correct_rpl_gettimeofday_signatu=
re.patch</a>&#39;. Unable to fetch URL from any source.</pre></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Jun 23, 2017 at 1=
1:25 AM, Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"mailto:martin.jansa@=
gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Probably yes as it got br=
oken again yesterday:<div><br></div></div><div class=3D"HOEnZb"><div class=
=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, J=
un 12, 2017 at 9:13 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote"><span>On 12 June 2017 at 20=
:04, Andre McCurdy <span dir=3D"ltr">&lt;<a href=3D"mailto:armccurdy@gmail.=
com" target=3D"_blank">armccurdy@gmail.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div id=3D"m_1319761442519517539m_-3601567112722856=
484:209" class=3D"m_1319761442519517539m_-3601567112722856484a3s m_13197614=
42519517539m_-3601567112722856484aXjCH m_1319761442519517539m_-360156711272=
2856484m15c9db3ee673e7ac">Would it be better to just make the meta-gplv2 gn=
utls recipe self<br>
contained and stop trying to share a .inc file and patches with<br>
oe-core?<br></div></blockquote><div><br></div></span><div>Yes.</div><span c=
lass=3D"m_1319761442519517539HOEnZb"><font color=3D"#888888"><div><br></div=
><div>Ross=C2=A0<br></div></font></span></div><br></div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a114e363ee2954c05529d2eb9--
