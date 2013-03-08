Return-Path: <twoerner@gmail.com>
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09FADE01470
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 11:16:08 -0800 (PST)
Received: by mail-ob0-f175.google.com with SMTP id uz6so1564788obc.20
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 11:16:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:content-transfer-encoding;
	bh=9EbN/QtvmJjBAaBdb1L0HkYP13GlVKMdL12CC1RA9zA=;
	b=SMFCslGGyMcABvFvk6Piyjo91DtljNX+S2k5Y5UUopmxpNzizzz3x60IfvnkIGMWdS
	XQezK1wes2dUALohr8Tpf3Le/7ftEwtmBb7HofjVc9I0Kilbwn+WVd5rOUW3F+AqvCYZ
	IPtQ+YVFHC7Pa0fjWZwgRUhgSXkiiKEDaesJuP33i1L5N3X3ipNj/PzYSqltrM3K7kTI
	QQukPMzx0goy75zdXPRLIKYJ6nsx4Z7/T4+RIAv3HgffAySkKVb6lFOS0U0ep86cllNv
	QmyXEbZyVhquATiqdRVJfsNn59Y+AFefevCrXq2TvONCX2Zxmfi2QoueLF9kp8gml1CR
	hZsg==
MIME-Version: 1.0
X-Received: by 10.60.11.228 with SMTP id t4mr2728604oeb.42.1362770168152; Fri,
	08 Mar 2013 11:16:08 -0800 (PST)
Received: by 10.76.173.138 with HTTP; Fri, 8 Mar 2013 11:16:08 -0800 (PST)
In-Reply-To: <CAFyqS9qFQ+kHrjmDAw4mCKop6RMzH7Ws1V6tt0_A2gM2a5UmYg@mail.gmail.com>
References: <CAFyqS9qFQ+kHrjmDAw4mCKop6RMzH7Ws1V6tt0_A2gM2a5UmYg@mail.gmail.com>
Date: Fri, 8 Mar 2013 14:16:08 -0500
Message-ID: <CAHUNapQyjz-FYPoB3J5pg5T4rEKs2DdGZiO36yHxTtY=8jZupw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How do I control what kernel modules are being loaded?
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
X-List-Received-Date: Fri, 08 Mar 2013 19:16:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 8, 2013 at 7:08 AM, Hans Beck=E9rus <hans.beckerus@gmail.com> w=
rote:
> I
> tried going through the module.bbclass but must admit I lost it
> somewhere in the middle ;) Any guidance would be appreciated.

Have you had a chance to look at the Yocto hands-on kernel lab?
https://lists.yoctoproject.org/pipermail/yocto/2013-February/014408.html

