Return-Path: <navani.srivastava@gmail.com>
Received: from mail-oa0-f45.google.com (mail-oa0-f45.google.com
	[209.85.219.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B8D0E01517
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 01:31:12 -0700 (PDT)
Received: by mail-oa0-f45.google.com with SMTP id o6so1247190oag.18
	for <yocto@yoctoproject.org>; Wed, 03 Apr 2013 01:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=uBTeJFEVMJD55h6H8heOhJ4PL8vIrMkpyBafvvDTQKc=;
	b=00lVNGa4sLEv+X+lrhnC9u+NOT3LoLrpiswlxAfRcqQhTFHiBp4VClXpgJqcP5cq5I
	oM/huqUZ7UxIRFCFscGcHFarOWrgtM9GgNA2b1Ssu9ogWX0sgc8l0jMoinAu3gaHHQDf
	zjJWTHCtbFmolkwxpfw17AM63JbybDYC8Ce2yx7JgP5aY1a/L4RAP8dq8e5tsQofK6GN
	3c4qiV3v0LlqKFWp+yphP8r5bXFxfoxytw55khgOhfjhwwDc33v0aGK7XdDHi5qqGbVY
	D/r2y/fc5+z83OgHpFuZmKGfDiPt7kISw0anskYQN8bu/9Mbni8K4iVPnd/CyJeQ5kVN
	w0Pw==
MIME-Version: 1.0
X-Received: by 10.60.3.130 with SMTP id c2mr461264oec.59.1364977871731; Wed,
	03 Apr 2013 01:31:11 -0700 (PDT)
Received: by 10.182.121.99 with HTTP; Wed, 3 Apr 2013 01:31:11 -0700 (PDT)
Received: by 10.182.121.99 with HTTP; Wed, 3 Apr 2013 01:31:11 -0700 (PDT)
In-Reply-To: <1806884.N0BHJJRgku@helios>
References: <9BACABF0C6B14A4D8C33B42A795119BE1B6F3998@POCITMSEXMB05.LntUniverse.com>
	<1B03475D-B706-43D2-A25F-DCB9B0DAF68F@gmail.com>
	<CA+Z6RkUCNAaR_BTCmHQEGcNcAssuyJ6Kg7Rqp5vOwGpmuyUNzw@mail.gmail.com>
	<1806884.N0BHJJRgku@helios>
Date: Wed, 3 Apr 2013 14:01:11 +0530
Message-ID: <CA+Z6RkX7xhK5dcgEscHrVuTwMWysXL8BH8nWhmeErQgU_im=jA@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: SDK creation
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
X-List-Received-Date: Wed, 03 Apr 2013 08:31:12 -0000
Content-Type: multipart/alternative; boundary=e89a8fb2017e2bc24c04d970addd

--e89a8fb2017e2bc24c04d970addd
Content-Type: text/plain; charset=ISO-8859-1

Thanks for your reply..
It worked..
On Apr 3, 2013 12:58 PM, "Paul Eggleton" <paul.eggleton@linux.intel.com>
wrote:

> On Friday 15 March 2013 14:12:45 Navani Srivastava wrote:
> > I tried giving
> > PREFERRED_PROVIDER_qt4_embedded ?= "4.8.1"
> >
> > in machine configuration file but it didn't helped..
> > Any suggestions?
>
> This should be PREFERRED_VERSION_qt4-embedded = "4.8.1"
> (note VERSION not PROVIDER, qt4-embedded not qt4_embedded, and = not ?= )
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--e89a8fb2017e2bc24c04d970addd
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>Thanks for your reply..<br>
It worked..</p>
<div class=3D"gmail_quote">On Apr 3, 2013 12:58 PM, &quot;Paul Eggleton&quo=
t; &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux=
.intel.com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">
On Friday 15 March 2013 14:12:45 Navani Srivastava wrote:<br>
&gt; I tried giving<br>
&gt; PREFERRED_PROVIDER_qt4_embedded ?=3D &quot;4.8.1&quot;<br>
&gt;<br>
&gt; in machine configuration file but it didn&#39;t helped..<br>
&gt; Any suggestions?<br>
<br>
This should be PREFERRED_VERSION_qt4-embedded =3D &quot;4.8.1&quot;<br>
(note VERSION not PROVIDER, qt4-embedded not qt4_embedded, and =3D not ?=3D=
 )<br>
<br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</blockquote></div>

--e89a8fb2017e2bc24c04d970addd--
