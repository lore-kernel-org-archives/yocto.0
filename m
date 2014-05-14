Return-Path: <lucas.pirolla@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 083A8E006EF; Wed, 14 May 2014 16:03:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lucas.pirolla[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 1799 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 May 2014 16:03:34 PDT
Received: from mail-qc0-f173.google.com (unknown [209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D018CE0053B
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 16:03:34 -0700 (PDT)
Received: by mail-qc0-f173.google.com with SMTP id i8so449407qcq.18
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 16:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=pStdlj+JNNoCeq+PxDs5V/HOIJhHmWw62fIzFbmwvn0=;
	b=RE3lC91nII9qyjXWJGOXyKJpOS5NMMnbJJaXSjPgGEUItNW6cwyEyYQ5VsoLokvSfo
	cgHDXYZiK0PU+FJcq2JgXZ7NEk182BCTlF1Lb/2WZKsFdY5vhXswkdJBX2EZ6DU+R9mC
	Ayux7O96ZeTqovB9I+vbzuPPXk//cltv+2v+EDU9IaJyAi7wmufNTMa7EDbOiWQi+P4B
	u3Hg+r3YsSJC+BqRBHisgdQ0nN2MKrWIvGS93qsoBJLCpOgjbTcKG7RHVJapwwv1wysy
	ttZ6hxFzjFGhbDHcrKWRNn1Yf4T5gLe5OI7sblCwOmsx1DtgM7ct2T7e2RlmAh9ALgHb
	ndTw==
X-Received: by 10.140.26.207 with SMTP id 73mr9926462qgv.51.1400106814619;
	Wed, 14 May 2014 15:33:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.142 with HTTP; Wed, 14 May 2014 15:33:14 -0700 (PDT)
In-Reply-To: <5373E26A.6060509@linux.intel.com>
References: <CAK4xyAmvGw7dYHhMEcUCHxBSzMiM+9Hk_SedN5huG5hc=BHcNg@mail.gmail.com>
	<5373E26A.6060509@linux.intel.com>
From: Lucas Pirolla <lucas.pirolla@gmail.com>
Date: Wed, 14 May 2014 19:33:14 -0300
Message-ID: <CAK4xyAnFguafPVS9f9u8gaidaDSauyVDxX0KyTpe+bXPUrk-DQ@mail.gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: meta-web-kiosk: bad fonts in high resolution
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
X-List-Received-Date: Wed, 14 May 2014 23:03:38 -0000
Content-Type: multipart/alternative; boundary=001a11c12eee5545ce04f963c56b

--001a11c12eee5545ce04f963c56b
Content-Type: text/plain; charset=ISO-8859-1

I'm using congatec imx6 quad.
I also asked about it in meta-freescale list, and I've just received an
answer, telling me to try to install extra fonts to see if it helps.  But
since I'm just starting in the yocto thing, don't really know how to do
that yet.

btw, freescale bsp uses Dora version.

Lucas



On Wed, May 14, 2014 at 6:38 PM, Saul Wold <sgw@linux.intel.com> wrote:

> On 05/14/2014 01:25 PM, Lucas Pirolla wrote:
>
>> Hello, Saul.
>>
>> I'm new to Yocto, and I made an Image meta-web-kiosk, and when I run it,
>> the fonts in browser  are getting messed up, as you can see in these
>> images:
>>
>> https://drive.google.com/folderview?id=0Bw1B-mbeX0tbRnc0OHZSaDVuQlE&usp=
>> sharing
>>
>> This happened in FullHD output.  But when I low the resolution to VGA,
>> fonts are totally ok.
>>
>>  Hm, I think I have tested it with HD before, it's been a while since I
> touched that layer.
>
> What device are you using it with?
>
> Adding in yocto@yoctoproject.com in case other folks have any idea.
>
> Sau!
>
>
>
>  Any ideas?
>>
>> Kind regards
>> Lucas
>>
>>

--001a11c12eee5545ce04f963c56b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m using congatec imx6 quad.<br></div><div>I als=
o asked about it in meta-freescale list, and I&#39;ve just received an answ=
er, telling me to try to install extra fonts to see if it helps. =A0But sin=
ce I&#39;m just starting in the yocto thing, don&#39;t really know how to d=
o that yet.</div>

<div><br></div><div>btw, freescale bsp uses Dora version.</div><div><br></d=
iv><div>Lucas</div><div><br></div></div><div class=3D"gmail_extra"><br><br>=
<div class=3D"gmail_quote">On Wed, May 14, 2014 at 6:38 PM, Saul Wold <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:sgw@linux.intel.com" target=3D"_blank">s=
gw@linux.intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 0=
5/14/2014 01:25 PM, Lucas Pirolla wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hello, Saul.<br>
<br>
I&#39;m new to Yocto, and I made an Image meta-web-kiosk, and when I run it=
,<br>
the fonts in browser =A0are getting messed up, as you can see in these imag=
es:<br>
<br>
<a href=3D"https://drive.google.com/folderview?id=3D0Bw1B-mbeX0tbRnc0OHZSaD=
VuQlE&amp;usp=3Dsharing" target=3D"_blank">https://drive.google.com/<u></u>=
folderview?id=3D0Bw1B-<u></u>mbeX0tbRnc0OHZSaDVuQlE&amp;usp=3D<u></u>sharin=
g</a><br>


<br>
This happened in FullHD output. =A0But when I low the resolution to VGA,<br=
>
fonts are totally ok.<br>
<br>
</blockquote></div></div>
Hm, I think I have tested it with HD before, it&#39;s been a while since I =
touched that layer.<br>
<br>
What device are you using it with?<br>
<br>
Adding in <a href=3D"mailto:yocto@yoctoproject.com" target=3D"_blank">yocto=
@yoctoproject.com</a> in case other folks have any idea.<br>
<br>
Sau!<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Any ideas?<br>
<br>
Kind regards<br>
Lucas<br>
<br>
</blockquote>
</div></div></blockquote></div><br></div>

--001a11c12eee5545ce04f963c56b--
