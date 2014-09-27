Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30400E007F6; Sat, 27 Sep 2014 13:55:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
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
	*      [209.85.214.174 listed in list.dnswl.org]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE1D7E007D5
	for <yocto@yoctoproject.org>; Sat, 27 Sep 2014 13:55:40 -0700 (PDT)
Received: by mail-ob0-f174.google.com with SMTP id m8so11311899obr.5
	for <yocto@yoctoproject.org>; Sat, 27 Sep 2014 13:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=nmM9Cds7iKoAZ20QZZvL5/Gi4eT/I4MfUFqVa6AEdJw=;
	b=tnZw0RybP5CqDEU5WNzLcsWk7SbnzN1JA5lvEd0RaW2Ufbdg8f4TxhgSnoklVRFP00
	WZNPmOqyjHIfhwg/ZIe2UkC7gqP0Vn9/nxNUrCZqKjZsav5IlqOLQn90WfWtJFhIwUd8
	n4uEbL/2K4dSDB5MzxLMSHftYUqpQrDfHdqm+H2kZTMluKrKziF4XsGQRlxCQbGkHuPm
	Z5ohbtyIEWRHuiEdl36oV8GCQJPkG4O5nbvWWZ+gXGeKV/3E1g1AQExny/qV/uFFs5g6
	oZsqj06eCj1H/jDcb20/H/DlsKLZ3IzBasFf9xMcFRe7bwcWJGP4r52yM19QLjMRts8J
	H69g==
MIME-Version: 1.0
X-Received: by 10.60.134.36 with SMTP id ph4mr29353641oeb.51.1411851340251;
	Sat, 27 Sep 2014 13:55:40 -0700 (PDT)
Received: by 10.202.95.213 with HTTP; Sat, 27 Sep 2014 13:55:40 -0700 (PDT)
In-Reply-To: <CAJTo0Lb22KGZysRmjPwsMT1oEafjce+cBD56uVPjH+Nq5YS4Sw@mail.gmail.com>
References: <CALb2249ipWUiPNwyRiDUpJeqaq0DELAz20ZRZeroJuf2CxQhPQ@mail.gmail.com>
	<20140924234311.GL25706@jama>
	<CAJTo0Lb22KGZysRmjPwsMT1oEafjce+cBD56uVPjH+Nq5YS4Sw@mail.gmail.com>
Date: Sat, 27 Sep 2014 13:55:40 -0700
Message-ID: <CAMKF1soJSPCUimgrgET9u5mjk0nZPbwis1CAhGM0VPkQvJ_Nrw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto <yocto@yoctoproject.org>, Leo Schwab <lschwab@sensity.com>
Subject: Re: Herp-a-Derp Alert: Changes to SRCREV Unpack Wrong Version
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
X-List-Received-Date: Sat, 27 Sep 2014 20:55:45 -0000
Content-Type: multipart/alternative; boundary=047d7b4729529cac2d05041241ed

--047d7b4729529cac2d05041241ed
Content-Type: text/plain; charset=UTF-8

On Thursday, September 25, 2014, Burton, Ross <ross.burton@intel.com> wrote:

> On 25 September 2014 00:43, Martin Jansa <martin.jansa@gmail.com
> <javascript:;>> wrote:
> > Include SRCPV in your PV, otherwise do_fetch signature won't be changed
> > when you change just SRCREV so it won't update it for you.
> >
> > You can also add it explicitly
> > do_fetch[vardeps] += "SRCREV"
>
> As SRCREV does change the fetcher behaviour, shouldn't that be the default?


I think it should be

>
> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <javascript:;>
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7b4729529cac2d05041241ed
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Thursday, September 25, 2014, Burton, Ross &lt;<a href=3D"mailto=
:ross.burton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">On 25 September 2014 00:43, Martin Jansa &lt;<a href=3D=
"javascript:;" onclick=3D"_e(event, &#39;cvml&#39;, &#39;martin.jansa@gmail=
.com&#39;)">martin.jansa@gmail.com</a>&gt; wrote:<br>
&gt; Include SRCPV in your PV, otherwise do_fetch signature won&#39;t be ch=
anged<br>
&gt; when you change just SRCREV so it won&#39;t update it for you.<br>
&gt;<br>
&gt; You can also add it explicitly<br>
&gt; do_fetch[vardeps] +=3D &quot;SRCREV&quot;<br>
<br>
As SRCREV does change the fetcher behaviour, shouldn&#39;t that be the defa=
ult?</blockquote><div><br></div><div>I think it should be=C2=A0</div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">
<br>
Ross<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"javascript:;" onclick=3D"_e(event, &#39;cvml&#39;, &#39;yocto@yo=
ctoproject.org&#39;)">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote>

--047d7b4729529cac2d05041241ed--
