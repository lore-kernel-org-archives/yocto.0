Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0EFAE00777; Mon,  9 Mar 2015 21:33:21 -0700 (PDT)
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
	*      [209.85.192.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CD10E00754
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 21:33:17 -0700 (PDT)
Received: by pdbft15 with SMTP id ft15so39712146pdb.6
	for <yocto@yoctoproject.org>; Mon, 09 Mar 2015 21:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=RF0ZpQdzrqqynQpedIqfYvEBW4ku7R0OiCFVVzpRlKA=;
	b=dEHus3s9qtPgvvRDhLSAK84RdGRLRLUhJ2KAQglynbzaI1tye+x9uiAiiztfMXI3lB
	QSkEi1ykuzpa79oZSd5LxW2gVLpwhwSrEXMihN03+NFbSeyJLjzNuJjn3eS2q9629JIz
	rbEO5TrhnttEgwD+AWlr7PxqJ4+AvVA8vIm2RUtkDKClL1P04XSy8ZZpL5JBk6aSpCPM
	nH0UwqU2sm7veHROwyKXSzMxqXcROwZewLkygw3KPAbOQbJXyC56GfKVntPVqtM/p/Ij
	Y5xS0klq3QGj+iiTHQoEIJqLl9tL/+p5oCbrcVPYaaimuXwYrCuL2rhURJSdxU37u+HK
	lZxg==
X-Received: by 10.70.125.129 with SMTP id mq1mr61383189pdb.70.1425961997405;
	Mon, 09 Mar 2015 21:33:17 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:489f:26b4:52a3:63c4?
	([2601:9:3580:84c:489f:26b4:52a3:63c4])
	by mx.google.com with ESMTPSA id s4sm21683462pdc.61.2015.03.09.21.33.16
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 09 Mar 2015 21:33:16 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1425961288367.52845@inedasystems.com>
Date: Mon, 9 Mar 2015 21:33:14 -0700
Message-Id: <DAD1A653-0F44-4DA3-94F4-8711FC42C180@gmail.com>
References: <18041737.50.1422871220143.JavaMail.kraghavendra@Raghavendra>
	<1425378406649.37693@inedasystems.com>
	<1425383722531.59484@inedasystems.com> <,
	> <2658071.vtqoVpZjG8@peggleto-mobl5.ger.corp.intel.com> <,
	> <1425385065999.46478@inedasystems.com>
	<1425961288367.52845@inedasystems.com>
To: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
X-Mailer: Apple Mail (2.2070.6)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Difference b/w yocto kernels and normal linux.org kernels
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
X-List-Received-Date: Tue, 10 Mar 2015 04:33:21 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable




> On Mar 9, 2015, at 9:21 PM, Raghavendra Kakarla =
<Raghavendra.Kakarla@inedasystems.com> wrote:
>=20
> Hi Paul Eggleton,
> I have some doubt that is ,there is any difference between the linux =
kernels downloaded from the yocto and that are download from the =
kernel.org with same version number?
> Can you please clarify the my doubt.
>=20

Yocto project provides a reference kernel called linux-yocto hosted at =
https://git.yoctoproject.org/ search for "Yocto Linux Kernel=E2=80=9D
you will find the trees for various versions. The root of linux-yocto is =
linux-stable from kernel.org. Then there are device specific branches =
where the reference BSPs are using to build the reference kernel. So yes =
there are differences where linux-yocto might have back ported or =
forward ported patches to get a given machine working on a given kernel =
version. On top it has its own tooling to help you create kernel build =
infrastructure for new machine that you might be working on.
there is extensive documentation and training on developing with =
linux-yocto as kernel. The branches eg.

https://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.19/refs/heads

However the OE infrastructure ( which yocto project uses for its build =
system), does not bind you to use linux-yocto, infact it provides base =
classes which help you to write your own recipes for kernel you would =
like to have. So you can very well you a different kernel.

> Thanks and Regards,
> Raghavendra Kakarla__________________________________
> ______
> From: Raghavendra Kakarla
> Sent: Tuesday, March 3, 2015 5:47 PM
> To: Paul Eggleton
> Cc: yocto@yoctoproject.org
> Subject: RE: SDK generation issue
>=20
> Hi Paul Eggleton,
>=20
> Shall i get any API information in the generated SDK documents.
>=20
> Regards,
> Raghavendra.
> ________________________________________
> From: Paul Eggleton <paul.eggleton@linux.intel.com>
> Sent: Tuesday, March 3, 2015 5:40 PM
> To: Raghavendra Kakarla
> Cc: yocto@yoctoproject.org
> Subject: Re: SDK generation issue
>=20
> Assuming you built the SDK you had installed with "doc-pkgs" in
> SDKIMAGE_FEATURES, they would be in the target sysroot i.e.
> <sdk-install-dir>/sysroots/<your-machine-arch>/usr/share/doc/
>=20
> On Tuesday 03 March 2015 11:55:22 Raghavendra Kakarla wrote:
>> Hi Paul Eggleton,
>>=20
>> Where can i get the documents generated by the yocto sdk.
>>=20
>> Regards,
>> Raghavendra.
>> ________________________________________
>> From: Raghavendra Kakarla
>> Sent: Tuesday, March 3, 2015 3:56 PM
>> To: Paul Eggleton
>> Cc: yocto@yoctoproject.org
>> Subject: RE: SDK generation issue
>>=20
>> Hi Paul Eggleton,
>>=20
>> Thank you for your response.
>>=20
>> Now my issue is resolved.
>>=20
>> I have some doubts on yocto-sdk. Can you please clarify them.
>>=20
>> When i Built SDK for YOCTO, I am getting a cross compilation tool =
chain.
>> With which i am able to build the applications for my platform. I =
wanted to
>> confirm, whether SDK means  a toolchain to build the applications or =
is
>> there something more (such as documentation, libraries, etc generated =
for
>> our platform)
>>=20
>> Regards,
>> Raghavendra.
>>=20
>> From: Paul Eggleton <paul.eggleton@linux.intel.com>
>> Sent: Tuesday, March 3, 2015 3:07 PM
>> To: Raghavendra Kakarla
>> Cc: yocto@yoctoproject.org
>> Subject: Re: SDK generation issue
>>=20
>> On Tuesday 03 March 2015 05:41:43 Raghavendra Kakarla wrote:
>>> I am generated the yocto SDK using the yocto sdk script "bitbake
>>> core-image-minimal -c populate_sdk" command. With this command I am =
able
>>> to
>>> generte the installation script file and .manifest file.
>>>=20
>>> I run the installation script file. After running installation =
script file
>>> it propts that following message:
>>>=20
>>> Extracting SDK...done
>>> Setting it up...done
>>> SDK has been successfully set up and is ready to be used.
>>>=20
>>>=20
>>> After this i run the ".
>>> /opt/poky/1.7/environment-setup-mips32rel-poky-linux" and echo $PATH =
i got
>>> the correct path.
>>>=20
>>> After this i built wrote a small example and try to build with the =
sdk
>>> generated toolchain by running following command:
>>>=20
>>> mipsel-poky-linux-gcc test.c
>>=20
>> Use $CC instead of running the compiler directly so that you get the =
correct
>> options.
>>=20
>> Cheers,
>> Paul
>>=20
>>=20
>> --
>>=20
>> Paul Eggleton
>> Intel Open Source Technology Centre
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


