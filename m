Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87CAEE00CA1; Thu, 23 Jun 2016 09:49:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C021E00A10
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 09:49:55 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id a5so131538505ita.1
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 09:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=XIAa2IgkujDq4hjHeTz132PsyHnk/7X9E3jt2KP70zc=;
	b=pmWtVEeAjlap/aTOkQl5nDVUMYLAKRzRm0V7tjp7rgTlHFfg5SfLxyAjnoDBvkEdgM
	MZrZTrxhE8QaFZkZJvqMmIeCN6k1AXC6TLmC5V8aAGcNSb6YOPC8yIe4S5qJppSS7bxx
	vAShCRyf8BG69CnmKmEeVmC1aLqYmQd23jU4JJXRbExiIp6bU1bmdLL4qmCZ2+GAKt7q
	zoTOfSCvCS0YZbpfVcNBTOqQ+SXta95sVbKXi/ojrOoHqZUxkfd2CCSUsGWR/gy4f2im
	4LxEhRDx0Ab/UdUlbVUdBTZcpCzVUvkrGLpKqkLiJbH6sEHP2B5VU3gl1lPDawfd8QWh
	KOmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=XIAa2IgkujDq4hjHeTz132PsyHnk/7X9E3jt2KP70zc=;
	b=C35WP2Mj9Hd75z1M5DdmhvsQlRBqxopODzjfhXofkR+UUdz2Z2BrrCDAJGlXJfsw8E
	PMB8XECx9YeIh3j4eg4NeyT7Sgx+FkDZsVRKiSSaFIRSsPDy/t8kDJfnZEwfbe3ID60V
	R6Vcl1zxYmrCGYQbZSr1E1bc2En7T38LssQhHAapbtDIUEWg8cDy9tAoFAHTN/VwjCD6
	cA1gBJ1/awqBL/gwULEDlvVrXwqsUGs9nQbf9C7DWYUGmYZJ0N2XHCnm06hM/8TYaKNw
	Blzml1Y7K+uGseoRkh+i5SyK2mNo0xNrZ5Z1Gw7xM5wbsuRzgb6qR9kFiu1vgO31UvKr
	UY3Q==
X-Gm-Message-State: ALyK8tLom9mI2HHEaHBNhOVsnL/nvzMWGQhLd2mDUuEXy+Du2P01joACAFzTcpcpz0Ak2/IOBY7CogOBgP0ifQ==
X-Received: by 10.36.3.7 with SMTP id e7mr21063295ite.15.1466700595523; Thu,
	23 Jun 2016 09:49:55 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.130.66 with HTTP; Thu, 23 Jun 2016 09:49:36 -0700 (PDT)
In-Reply-To: <89124cde-04fa-a2be-8cad-1b12a41107b4@linux.intel.com>
References: <DB5PR06MB15731242248C60AED84A0353CF2D0@DB5PR06MB1573.eurprd06.prod.outlook.com>
	<89124cde-04fa-a2be-8cad-1b12a41107b4@linux.intel.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Thu, 23 Jun 2016 09:49:36 -0700
X-Google-Sender-Auth: qH7azDWIntccHTFC4ZMKM7tnIAQ
Message-ID: <CABcZANn-nbFL=7d7HCtEKpBjoY7HYkcZPuKn9CvKTuhWUUpXZg@mail.gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Gujulan Elango,
	Hari Prasath \(H.\)" <hgujulan@visteon.com>
Subject: Re: Regarding backslash in bblayers.conf file
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
X-List-Received-Date: Thu, 23 Jun 2016 16:49:59 -0000
Content-Type: multipart/alternative; boundary=001a11419becfcf9c70535f4d740

--001a11419becfcf9c70535f4d740
Content-Type: text/plain; charset=UTF-8

On Thu, Jun 23, 2016 at 7:12 AM, Leonardo Sandoval <
leonardo.sandoval.gonzalez@linux.intel.com> wrote:

> This looks to be a bug. System should either accept path names with or
> without trailing '/'. Please file a bug on bugzilla.yoctoproject.org
>

Yeah, we likely need to sanitize that path so it aligns with the expected
value of BBFILES.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11419becfcf9c70535f4d740
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Jun 23, 2016 at 7:12 AM, Leonardo Sandoval <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:leonardo.sandoval.gonzalez@linux.intel.com" target=3D"_blan=
k">leonardo.sandoval.gonzalez@linux.intel.com</a>&gt;</span> wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><p>This looks to be a bug. System should either =
accept path names
      with or without trailing &#39;/&#39;. Please file a bug on
      <a href=3D"http://bugzilla.yoctoproject.org" target=3D"_blank">bugzil=
la.yoctoproject.org</a></p></blockquote></div><br></div><div class=3D"gmail=
_extra">Yeah, we likely need to sanitize that path so it aligns with the ex=
pected value of BBFILES.<br>-- <br><div class=3D"gmail_signature" data-smar=
tmail=3D"gmail_signature">Christopher Larson<br>clarson at kergoth dot com<=
br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Sen=
ior Software Engineer, Mentor Graphics</div>
</div></div>

--001a11419becfcf9c70535f4d740--
