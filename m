Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 418B6E00EDA; Thu, 21 Jul 2016 18:35:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3EBFE00ED3
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 18:35:55 -0700 (PDT)
Received: by mail-qk0-f196.google.com with SMTP id q62so7641272qkf.2
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 18:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=PyT6APzJyLKdDlw1F+Q1dKs4bICghgqkXF30o5KCkso=;
	b=kY7cfzkmINtEkdh4X7fd8KFM6qy5/eQgDWHvdRFYyuRaO42rqfiD5iGCG5IhWcA6jV
	HrMmsQ19f2qixUXSeB+xQGoR5bJ8QkSJAsZQgz4IY28sFs1YWQLQb01YhA4cfPncQR2p
	BABWkj/m1JtyiRcIApCyePlQkQLgC9sYMKXjX0GPaZRAvADheUi7WDcJNSYqfdo/H9Ko
	wur5oznBS2zbGTD0+n7ggjhxTi8s/CqkDeRgMAbKdLcVFl1SJ7tOxuELzlHRgp1rsO9E
	ITyz4JL8tgC9p2O5mI0YqE5+aRoLKZ8ykDE/Vcvv2wjf50IyX1iIsZf+L0leCxrKUtWI
	u6Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=PyT6APzJyLKdDlw1F+Q1dKs4bICghgqkXF30o5KCkso=;
	b=YfhvuXxtiJEIm2y2pPp1RTIG4YAC9b/V/LL6QH1P4079trn59D4MWhpKHZ5OvunF70
	87XFCtkbT38eMj+qRz9KyekGTw+j83bG3WbzxrLRlFdnqrkOH8VyHVIn/ZCkv9WqXJX3
	+JL4ml/Gs7DsJhcFj7nC6mw80GvV88ivqzMQje8lmbHsW+xIzGIr2JreehW4kqreAhFl
	7SFf23P1c1hjWHupufyJK+M6z1yfNEdrU5qFAb8+USrm7aAZ3rIyMj71QFwrj+qWya9z
	BSp0+F91mK5ff3nugw2Xc5L42EY5XXGVAdewGa9vpyn4blK7Lq3ml0BflnWy5KMGYgNI
	VRVw==
X-Gm-Message-State: AEkooutFvTCLl4Fk0Q9w4O/ZrU9C+9F4loXenzqpiZpiBCW+hwmrymJWcepwmh8e2Ounb4PbDpNyQpsdCGFMew==
X-Received: by 10.55.187.4 with SMTP id l4mr1736654qkf.152.1469151354623; Thu,
	21 Jul 2016 18:35:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Thu, 21 Jul 2016 18:35:25 -0700 (PDT)
In-Reply-To: <2248630.eW0NeUEiY0@peggleto-mobl.ger.corp.intel.com>
References: <CAJ58UNn4pFMngrKG8MeffP+GQGTd-qQVE3_Roc01PcWpK_FF9Q@mail.gmail.com>
	<CAJ58UN=ZNBHx+HHeyM-=QmuDqr8bZJh8iN8ok9idTDeOc1W-_A@mail.gmail.com>
	<EF6FEB28-A462-4940-94A4-FBAA5EB30AEE@gmail.com>
	<2248630.eW0NeUEiY0@peggleto-mobl.ger.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 21 Jul 2016 18:35:25 -0700
Message-ID: <CAMKF1sr4UxRWu+8Bei0H3H9epO1uU_5AJ=NCQH2FGgN4gz0OkQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error during adding a new recipe.
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
X-List-Received-Date: Fri, 22 Jul 2016 01:35:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 21, 2016 at 6:32 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Thu, 21 Jul 2016 18:22:32 Khem Raj wrote:
>> > On Jul 21, 2016, at 5:20 PM, Vijayakumar Badiger <vijayakumarmb@gmail.=
com>
>> > wrote:
>> >
>> > The sync driver is already ported in the kernel.  I just need to get t=
his
>> > compilation error fixed. I tried adding below change to kernel bb file
>> > but still I get that same error.
>> >
>> > PACKAGES =3D+ "kernel-headers"
>> > FILES_kernel-headers =3D "${KDIR}/usr/include=E2=80=9D
>>
>> there is a different recipe for headers linux-libc-headers that also nee=
ds
>> to be patched and then hopefully kernel build system is exporting this
>> header for userspace automatically and you will be set.
>
> I thought we weren't supposed to be encouraging modifying linux-libc-head=
ers -
> especially as this isn't for the libc - it's for other userspace code...?

Yes thats correct thats why
I am not asking for submitting this patch upstream.

