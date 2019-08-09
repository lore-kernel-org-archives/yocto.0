Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C12DBE00D74; Fri,  9 Aug 2019 00:01:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.160.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (lefevre.da[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7FB0E00CD7
	for <yocto@yoctoproject.org>; Fri,  9 Aug 2019 00:01:03 -0700 (PDT)
Received: by mail-qt1-f180.google.com with SMTP id y26so94886436qto.4
	for <yocto@yoctoproject.org>; Fri, 09 Aug 2019 00:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=SSh88N6wUhjt9K74d6FgylOvT7CRz7IVkso5GBf9NdQ=;
	b=MBfSA79vOsuuUcQOvskIOrxtsqqIroxhYC+aaXzihBT7+iw55cAA0QQZe0nm+5E2sc
	5NZMAuk7gk60zT0H2EEi1ACEn9iM2jRtk+2u2k0bTefACg4/XM4Vov9Jf+W9qj9+A4WT
	3lp1heykqH2IHlha90GBXW2X4th7dmaUcS4Ir+qzYQs6sc4pFBmqvJA8Xg/E1H0c74vs
	q0VlolNj9qBb7CNL+eFRIbtOy0iChU6qL9I5IAP8f0el1KJx+MAziyxLu7zprswQFqV1
	Aoe+mX/QXWxqVm1DtETMUpA51s5piSD6UvONU+ST3dnmNsJwY8LPtpniLmHcXmuBSlZ1
	qSQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=SSh88N6wUhjt9K74d6FgylOvT7CRz7IVkso5GBf9NdQ=;
	b=UjmeylTLSHALp5Gi3oD1nutrfTIy/uZjL0eSmrC7fFo2J+AEmaAUOu4jVWROQ1BwMt
	p21Nb+CERKqeg6nO8UwmCGPLOF6VU5WYpsRMQSsdkokNif5cNPaWVC2r5yl38D91zbe8
	1adjhQwFMbeZyVo+u8HXXkRBk0ylgih4jRDjhOnACnB7J2/pPLqKbs15PTMLgrwcuqd/
	RHbKxX5ExacePf3B4jmUoAetgZyIbrqC2Zh54MwvjWQfnIsB0Y10XQBnpKhUYOap0vnY
	dxIQ/ZEBQ5Dn5shCYdRZZ5BF+FVUfNyz8/4n7orQrzQUMxOwlHsQj82Zexwn1UE916JD
	MD7Q==
X-Gm-Message-State: APjAAAWqIKdcAuJN3I8KWUfQt/GebAPJor7/w1FjVy++TRQpFy2jxO4g
	gV+5Bb+cVqXAq8W+eFvC9PuNZXhbv9lzh13+Aapj6lw=
X-Google-Smtp-Source: APXvYqz4GOEg49jakpeBbkMS0SFztor66OBHLh/1s6HnUujOSaed7dfHypvNVhfslbvSNlugF3WVDUkHtYR+uK0/yKs=
X-Received: by 2002:a0c:b59c:: with SMTP id g28mr16885460qve.244.1565334062772;
	Fri, 09 Aug 2019 00:01:02 -0700 (PDT)
MIME-Version: 1.0
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Fri, 9 Aug 2019 10:00:51 +0300
Message-ID: <CA+FhBv9=GTnXDr2osxzrbzy3Z8iQeKsT1m_0cgEzSmchdkJFMQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: PR Service multibranch project
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
X-List-Received-Date: Fri, 09 Aug 2019 07:01:04 -0000
Content-Type: multipart/alternative; boundary="000000000000c4367e058fa9bc20"

--000000000000c4367e058fa9bc20
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm looking at enabling PR Service to auto increment some recipe revision.

On a build server I exposed sstate and downloads folder to use that server
as a mirror. So I'm thinking of putting PR service there.

Few things are unclear to me after reading the doc:

We use repotool to manage our branch configuration for different projects.
These different projects share common repositories

Do I need to run an instance of PR server per project or is the database
shared with multiple projects?

Do I understand correctly that if I turn ON buildhistory, I would be able
to switch my layers branches without bumping the revision if it already
exists in the database?

Is the revision bumping MACHINE dependent?

Thanks,
-Damien

--000000000000c4367e058fa9bc20
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m looking at enabling PR Serv=
ice to auto increment some recipe revision.=C2=A0</div><div><br></div><div>=
On a build server I exposed sstate and downloads folder to use that server =
as a mirror. So I&#39;m thinking of putting PR service there.</div><div><br=
></div><div>Few things are unclear to me after reading the doc:</div><div><=
br></div><div>We use repotool to manage our branch configuration for differ=
ent projects. These different projects share common repositories</div><div>=
<br></div><div>Do I need to run an instance of PR server per project or is =
the database shared with multiple projects?</div><div><br></div><div>Do I u=
nderstand correctly that if I turn ON buildhistory, I would be able to swit=
ch my layers branches without bumping the revision if it already exists in =
the database?</div><div><br></div><div>Is the revision bumping MACHINE depe=
ndent?</div><div><br></div><div>Thanks,</div><div>-Damien</div><div><br></d=
iv><div><br></div></div>

--000000000000c4367e058fa9bc20--
