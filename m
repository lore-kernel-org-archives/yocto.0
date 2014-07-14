Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24AF3E006B7; Mon, 14 Jul 2014 10:38:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E07CFE004FF
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 10:38:00 -0700 (PDT)
Received: by mail-vc0-f170.google.com with SMTP id lf12so4036431vcb.15
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 10:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=/RX3g32+in6fkTVEXoKU3TLERQIeXDzMIYktQqZHFdI=;
	b=XAjACLvYtESm51+LUmMDktXz9uHVGJhSqDzyorr93wxVd6dYvS7VBg1n4fbZahJGUH
	+AUVoy/5XhiiIPnfAc2BDKY1g675a/rQ4RvT4ZM8Zo0NZIwloNp/K/592/VtbeNJMkVl
	VQLQGhwdLUdosW2W6Ht/pUdDKVmUrjHtD5E5HP+n8dMVP1AbNV/KO9uJXAbWQgd9Oi2E
	b9Xw24LMQBPgppbXyRxv/75j0tkjNzx/ZKIlQhUKoPmkhXhVrNjKL8a+EqeUI65dWSAp
	3dtUcA7kDk3eoifHxcQPXoP2ko0Ptrs6J+ysq4S6JLp+EkYqpersNq5c6QZioJ43Oh0O
	+guw==
X-Received: by 10.58.136.163 with SMTP id qb3mr1310985veb.62.1405359479573;
	Mon, 14 Jul 2014 10:37:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.105.233 with HTTP; Mon, 14 Jul 2014 10:37:29 -0700 (PDT)
In-Reply-To: <CAJTo0LYAZVQ-BQXv-jXDdVRjVT3=OkYMBTi=Lgo0vpfoXwqTwQ@mail.gmail.com>
References: <CAF_dkJC4ZFULv93=PFhC-ZwO6Vp058OBZ1nDmLGyce4WFS=9rA@mail.gmail.com>
	<CAJTo0Lai=JgicnNi9U=UneTKGHsHrE=bR5BC7JDu3-6OnkoVLw@mail.gmail.com>
	<CAF_dkJD6GAqN3+Q1weyYO+9QGn-QP2m271AwXtQEN7z_=-RQHg@mail.gmail.com>
	<CAJTo0LYAZVQ-BQXv-jXDdVRjVT3=OkYMBTi=Lgo0vpfoXwqTwQ@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Mon, 14 Jul 2014 13:37:29 -0400
Message-ID: <CAF_dkJBQM-+Rtt+3n7CP63nKKAh4=YRn7EL4NnkhXbQ-e66JRw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Make autotools use autogen.sh
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
X-List-Received-Date: Mon, 14 Jul 2014 17:38:13 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 14, 2014 at 11:39 AM, Burton, Ross <ross.burton@intel.com> wrot=
e:
> On 14 July 2014 16:31, Patrick Doyle <wpdster@gmail.com> wrote:
>> a) do_compile fails because make depends on INSTALL, because INSTALL
>> is listed in the aravis_DATA list in Makefile.am.
>
> That's silly.  Why would you ever need the install instructions to be
> installed?  Personally I'd patch that out and send it to them.
> INSTALL is implicitly included in tarballs and there's no purpose in
> installing a generic installation document.
I like that answer best of all=E2=80=A6 I started with that approach this
morning, but then misread the automake documentation and convinced
myself that there had to be a better solution.  Reading your response,
and reading the automake documentation more carefully, I agree.
INSTALL should not be listed in aravis_DATA.  I'll submit that patch
upstream.

Thank you very much.  This was extremely helpful.

--wpd

