Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7D97E00B46; Tue, 24 Nov 2015 12:46:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43285E00B44
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 12:46:24 -0800 (PST)
Received: by ioc74 with SMTP id 74so33188870ioc.2
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 12:46:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=PQXfW+pQkW+vZlga+iXjnvNnJxUmhpzede5cvROQsN0=;
	b=oQKk3H0gLeIlIaYVtkXbJC0991mGbtUPcltu2+mfi0tDFbqxJ/Pno7YnClTxDgZHNx
	W4HJHSseukBelURmqnlzRphGdjdEBzYGQtNCGl1P5r6Y5eb2rWydJw0HDtAUntpaFt/z
	xA/V4PJdHV32jhpM2IlEhV1ynAfaCOuedWgbwpbxDUt9rClzXBENx6ybPmulREiBRJYi
	g1+inj2qmCPOSLXFvsMcFQ4I1mfdyBjcBa+jNzTpijMCsdgDQOihKq7WS63USFk53phc
	ARvLyDN0v01GnSEI5Nu/rkwKjhNa1Lpz3C1EI8h2Jg995z8FUUAVD1QZmcaD4dh7F2o0
	qilA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=PQXfW+pQkW+vZlga+iXjnvNnJxUmhpzede5cvROQsN0=;
	b=BxJfcwVD566IdoRjpYTXvxX6glZd+crt9gA/4hOJpz1U6OXr9bp37pw/b1DZ40iZCQ
	b2czUSxhtNFdGGX37qbPdc3aGhgjTGuv0OQU4JswRPDNbeN1gqY3xomDZIaioujE2hdX
	Hc2uwj2sauxexTIuV3tCUgu68JtFTdb8Jh5wjPd3DBvrFYidTJqP9M/mgUg62SQuyU0C
	LP8QdCw9yNxXRqyck0mqgo+P0OGSA06Yq8ENhnk1mxDWFUaRIDleUViN+EEEI8z6n20o
	D74ggusgjGt3Xg8hVDxIyATSj4M9lqOVVo2TD76nC7vRjOSl0V92EWq9BZ0FFF7jiOsZ
	ibpA==
X-Gm-Message-State: ALoCoQlPwZazZqBfPnIKAEL5NK9/MvoEzh6rEDeUfJQ3pqBepUaCerpiF3y2/7K3fyCM7qWk+h7o
X-Received: by 10.107.3.144 with SMTP id e16mr30020793ioi.99.1448397984436;
	Tue, 24 Nov 2015 12:46:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.136.141 with HTTP; Tue, 24 Nov 2015 12:46:05 -0800 (PST)
In-Reply-To: <6E51916E4A1F32428260031F4C7CD2B6116FD76C@ORSMSX112.amr.corp.intel.com>
References: <1448383148-2344-1-git-send-email-juro.bystricky@intel.com>
	<CAJTo0LaEo4YHRbc5fdc5aJuOP55zgZUw_Hi1nrvxLapxn-9dSw@mail.gmail.com>
	<6E51916E4A1F32428260031F4C7CD2B6116FD76C@ORSMSX112.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 24 Nov 2015 20:46:05 +0000
Message-ID: <CAJTo0LbtuTkHgRT8f62gfYOpk6S97+exjO6inYwYS1v1t5Y5+A@mail.gmail.com>
To: "Bystricky, Juro" <juro.bystricky@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Juro Bystricky <jurobystricky@hotmail.com>
Subject: Re: [PSPLASH 0/2] Few fixes for psplash
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
X-List-Received-Date: Tue, 24 Nov 2015 20:46:26 -0000
Content-Type: multipart/alternative; boundary=001a113ecf405b264b05254f6fc4

--001a113ecf405b264b05254f6fc4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 24 November 2015 at 18:39, Bystricky, Juro <juro.bystricky@intel.com>
wrote:

> Thanks. I=E2=80=99ll mark the bug 7236 as resolved/fixed.
>
>
The recipe needs updating first, just bumping the srcrev will do nicely.

Ross

--001a113ecf405b264b05254f6fc4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 November 2015 at 18:39, Bystricky, Juro <span dir=3D"ltr">&lt;<a href=
=3D"mailto:juro.bystricky@intel.com" target=3D"_blank">juro.bystricky@intel=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"Ms=
oNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:#1f497d">Thanks. I=E2=80=99ll mark the bug 7236 as resolved/=
fixed.<u></u><u></u></span></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>The recipe needs updating=
 first, just bumping the srcrev will do nicely.</div><div class=3D"gmail_ex=
tra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113ecf405b264b05254f6fc4--
