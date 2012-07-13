Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 105EAE0027D
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 07:47:08 -0700 (PDT)
Received: from mail-qc0-f180.google.com ([209.85.216.180])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 13 Jul 2012 07:47:07 -0700
Received: by qcmv28 with SMTP id v28so1993551qcm.25
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 07:47:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=/RFhQ+CjjVDdgf24N8nXsOx+YTxG1oZ8ShSqCKnkk6A=;
	b=NNrmrQ9fWx44+ZNfCG2ZYURBbgHKwhvjfWw+/8IgDhDcENqA8w/x67gtUe2T9QL9nS
	LnAr5cgtdka5FMFoW5prKIMZ6TQbGrXGIMHNO+Dw42IEaY50sKR7ahNd9+IUxO9zekwi
	r0G1J3OI/7IomRfB4UHZLmhoS/pC4P4Tv7/yQR54dHwPYgmVTShR2JhBf8mjWQxVI2ku
	D3eFlrsjlZ+VLuG6KoOWul4jEXuFa+KYzROyc43JU/1CtNp2NvcYvIRpcd9rXZxxrYdQ
	LB4yHVwgeoyOnCUMHt7N9s2M+vltB/aR9mN4ARwS9hf0kCJXyls/NT2Ih+34K+/ltPsT
	Fx/g==
Received: by 10.224.9.70 with SMTP id k6mr3319640qak.31.1342190826088; Fri, 13
	Jul 2012 07:47:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.218.201 with HTTP; Fri, 13 Jul 2012 07:46:45 -0700 (PDT)
In-Reply-To: <11E5CEEDEF69BA4BAFC2DB04F733555508778E@SHSMSX101.ccr.corp.intel.com>
References: <11E5CEEDEF69BA4BAFC2DB04F733555508778E@SHSMSX101.ccr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 13 Jul 2012 15:46:45 +0100
Message-ID: <CAJTo0Lb_ujQtvqdv9CkudffgXtx48Bv+zWrDkbP+9zUpjODFJg@mail.gmail.com>
To: "Lv, ChunhuaX" <chunhuax.lv@intel.com>
X-Gm-Message-State: ALoCoQlOf68b8pE63T5nSBJH0MVGAm0dTDG8+nr+BlEDx/UCv4eW8z8RYbWJg5wKCXDf2l0NDw4z
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: webhob_db and Management Communication API
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 13 Jul 2012 14:47:08 -0000
Content-Type: multipart/alternative; boundary=bcaec51dd7e768e73c04c4b727e6

--bcaec51dd7e768e73c04c4b727e6
Content-Type: text/plain; charset=UTF-8

On 13 July 2012 04:13, Lv, ChunhuaX <chunhuax.lv@intel.com> wrote:

> 1.       **Build Identification:****
>
> GUID:  (int) hash(user_name + project_name + build_name + timerstamp)
>

"GUID" has a precise meaning and implementation (
http://en.wikipedia.org/wiki/Globally_unique_identifier), I recommend not
using that term.

Ross

--bcaec51dd7e768e73c04c4b727e6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On 13 July 2012 04:13, Lv, ChunhuaX <span dir=3D=
"ltr">&lt;<a href=3D"mailto:chunhuax.lv@intel.com" target=3D"_blank">chunhu=
ax.lv@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<p style=3D"margin-left:18.0pt"><span lang=3D"EN-US"><span>1.<span style=3D=
"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0
</span></span></span><u></u><span lang=3D"EN-US">Build Identification:<u></=
u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:18.0pt"><span lang=3D"EN-US">GU=
ID: =C2=A0(int) hash(user_name + project_name + build_name + timerstamp)</s=
pan></p></blockquote></div><br><div>&quot;GUID&quot; has a precise meaning =
and implementation (<a href=3D"http://en.wikipedia.org/wiki/Globally_unique=
_identifier">http://en.wikipedia.org/wiki/Globally_unique_identifier</a>), =
I recommend not using that term.</div>

<div><br></div><div>Ross</div>

--bcaec51dd7e768e73c04c4b727e6--
