Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3CCAE00C02; Fri,  5 Feb 2016 23:52:11 -0800 (PST)
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
	*      [209.85.192.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E53ACE00BF8
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 23:52:08 -0800 (PST)
Received: by mail-qg0-f47.google.com with SMTP id y89so11576427qge.2
	for <yocto@yoctoproject.org>; Fri, 05 Feb 2016 23:52:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=Ohogx8p7tiCnnXCxuWYyKv7pdXYWdAOWG0TUpJ24g9A=;
	b=kGLALwT07jv9LdImWUsEMSDUtT3NiLCJBCT1HP2pCLuk70qHGOh6hPHSngHb3oxuA2
	q2YJ3MbKIyAJ9G4EoX9/FYjmKUcpkQYq/bkkkbm/jUcQd42KUiSLSNbwVqas1evH9Ta5
	uhoUi8bzwxCIp5q+xAkzp/P93Y1nL2NmhTHpyoxLCjhaW4sfv6Ugcu1sDRyRlYXRrou1
	u7hoZkzGgyuL3g10zA30BF3Ocl+9Ma1v5V4IBgj2XkUwBPgVV/4wz9FMTvNWD+mIaaxo
	M5HEDfrT+U5gRujLnoiS6zVTSEwsY4rcg6mD+/QV0G8KjxNsc9OYp7kMptpQQybIBgDo
	+O7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=Ohogx8p7tiCnnXCxuWYyKv7pdXYWdAOWG0TUpJ24g9A=;
	b=Fj0mPtQ0A4DIFHjely2RcXDt6eAVcn2EAVrTI3GEneNysifmMv8IYBA2GXbkW61ZgI
	4Seezz7zJyqONy0FaOECCSGazK1vUXXLz7sgIF/Z0MDqDmvMnJLdblJJ9KCUyXcEYg94
	9kQOjrXspTH53/K02/9y8bI9vxhv/6bDYYWM1e/sYjMFWNxnPQUOrPYZDrOEU9+YzeCB
	MIVHvaFmQSYBq2YdNUesiD6hhPCdwycqvSELG/zRGng7LEbAnBgo/SepVgcIQO87jjmM
	0Q1cHLWbE7KHaPdixWV8H28HZ627czZCWgGCiDp9UwnWYpmckLhYCLpqUxwZpeE7BLtr
	QiGA==
X-Gm-Message-State: AG10YOS/czsFHKP2K4pFt9u0Nvxda7D343ZG/glHOwaLpQtwM3Qu6BincodprG4+0KISGxOrg6SIuQp9bYGmLQ==
X-Received: by 10.141.3.86 with SMTP id f83mr22812731qhd.98.1454745127714;
	Fri, 05 Feb 2016 23:52:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Fri, 5 Feb 2016 23:51:38 -0800 (PST)
In-Reply-To: <3DDC4837-5BF7-4959-A4FF-A07435B3DE5A@nathan.to>
References: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
	<CAJTo0La9vryBMou_wnKKdmdC61Kgu7u2JL+vpx1RY+s7Gbe7QA@mail.gmail.com>
	<2D89126E-8678-494A-A98B-5F5D5723E860@nathan.to>
	<CAJTo0LbbM_TXswmQxbqP5yr4Pf9geh7Ru6=iD3nHNHscC8q-nQ@mail.gmail.com>
	<30E23744-25E6-43C3-A831-A8195E8787C9@nathan.to>
	<CAJTo0LZFMT=JyABkd1mzLJhB9npzkTLO_sXsReMD=hKvDsuFBw@mail.gmail.com>
	<1454695459773.33828@seescan.com>
	<7A197409-A596-4F9C-AF6A-A46A2529AB05@nathan.to>
	<1454695732426.82900@seescan.com>
	<D353173E-F5C7-4BCC-A975-D5E986B190D3@nathan.to>
	<CAJTo0LajcF_rR-oGnTr=_vBwcAvFcOsgJEXqPZFR0YmdgLCv5g@mail.gmail.com>
	<CAMKF1spXFvGQs-NM7eRD6ZFBVnoZPysrQec=nLfqkmFUBuSO+Q@mail.gmail.com>
	<CAJTo0LZc+MN02kQusy-on2g5kcohyHFQMY0ShtFnvgQhO2V9MQ@mail.gmail.com>
	<CAMKF1soGpt_BA1FFsiOSZxpoT5RH6LjwKBTiCqz+C=6KFr_Aog@mail.gmail.com>
	<3DDC4837-5BF7-4959-A4FF-A07435B3DE5A@nathan.to>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 5 Feb 2016 23:51:38 -0800
Message-ID: <CAMKF1soTRnmbuiwOzg+NLgJp7abaWyQnGwFjrWj8N9c8Hzw8cw@mail.gmail.com>
To: Nathan Sowatskey <nathan@nathan.to>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libgcc_s not present in Yocto image
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
X-List-Received-Date: Sat, 06 Feb 2016 07:52:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

by ld.so I mean dynamic linker shared lib not literally ld.so file
it should be in /lib/ld*.so


On Fri, Feb 5, 2016 at 11:36 PM, Nathan Sowatskey <nathan@nathan.to> wrote:
> Hi Khem
>
> Thanks for trying to help :-)
>
> I read what you have suggested below as trying to execute =E2=80=9Cld.so=
=E2=80=9D and passing my program as an argument.
>
> I can=E2=80=99t find a file called =E2=80=9Cld.so=E2=80=9D on either my Y=
octo image, or even the Ubuntu box that I am using to build it (which I use=
 as a comparative reference).
>
> What am I mis understanding please?
>
> Regards
>
> Nathan
>
>> On 5 Feb 2016, at 21:49, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Fri, Feb 5, 2016 at 12:46 PM, Burton, Ross <ross.burton@intel.com> wr=
ote:
>>>
>>> On 5 February 2016 at 19:56, Khem Raj <raj.khem@gmail.com> wrote:
>>>>
>>>>>> interpreter /lib64/ld-linux-x86-64.so.2
>>>>>
>>>>>
>>>>> Does the loader hunt around for this, as this is certainly not presen=
t
>>>>> in a
>>>>> default OE image?
>>>>
>>>> no it wont. infact thats the loader.
>>>
>>>
>>> Yeah, what I meant is would the kernel hunt for that.  So, that's the
>>> problem?
>>
>> kernel wont. you can try doing
>>
>> /path/to/ld.so <your-binary>
>>>
>>> Ross
>

