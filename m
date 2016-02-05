Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F598E00D35; Fri,  5 Feb 2016 10:21:37 -0800 (PST)
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
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81C66E00D2E
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 10:21:36 -0800 (PST)
Received: by mail-io0-f178.google.com with SMTP id g73so137606246ioe.3
	for <yocto@yoctoproject.org>; Fri, 05 Feb 2016 10:21:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=IbYcOSDjKUp9YKu5gDArd2OdwFAm8I+UKvA7treNVd0=;
	b=y969o7Pnx1Kzl+iejZbtyS2iCweOFiqSK2jJwiiOBxtFXAopJBpYx/+5hPhFhQQeif
	Hp9CYpFk8JO28tlrn1Qa52BtWeEfgCE/qvkYJfWwfHoANgO7ScX16lPqX6k5HvNuU9l7
	1c8WkMyUqYBzDx7oUAEwcQ8VQATsjPEmLerQEXXrFjPwtr5FIp+rpxyFb4TUj8KJEfUz
	NMla1naFU8MqxfsVILjFm5RFhzit6nU6v+cSsziX0w5CtVvwnKw9o8ec5j+pDV/EIUjz
	qIcgR84Tj2AV//t3+CTYZAGQ3s7pwLO/BGD0mDYjo2Cl5crYYu1EtmqbmMVls83S5BvQ
	sypQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=IbYcOSDjKUp9YKu5gDArd2OdwFAm8I+UKvA7treNVd0=;
	b=jckEo5zNb1j6Jjun+/2Cyl9dCT0Ujb+wEyV5nehjzpdupPusRv4RuiZhSStiUDQ1RO
	NsHWryqihBvpSWRNdcj1dJB8+eE4DXKxChziqY1yxAj4D/istxqlqOq6YObxK2cPC2EB
	YsZXvgtsjIzwIP5rP86xXKzpXzVxLPQI6UKXp8lEiFn97lcn9XEDM2+7jYJplpsvJCkz
	vg+AxbxTl9gUqib7GmflGYqjsnenevQZGslJS5g+bHFU7HrNt/ToL8DZRjKgwiHaQmmH
	KNRUBSfEhPgLM1YG/r7VCeG4VH9+4bF3URwhJe7poZQLm2Lu7RNh3GinE5RHJpquFhi6
	47lw==
X-Gm-Message-State: AG10YOQyRGP74Kj4MBEarDgtMmaR8T5q7QbucG5DxMwiW0gc+5DSD9zf/tnpkBhJu4ChARBegBNSjBXn84+ynQ==
X-Received: by 10.107.34.79 with SMTP id i76mr18459431ioi.195.1454696495839;
	Fri, 05 Feb 2016 10:21:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.46.219 with HTTP; Fri, 5 Feb 2016 10:21:06 -0800 (PST)
In-Reply-To: <D353173E-F5C7-4BCC-A975-D5E986B190D3@nathan.to>
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
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 5 Feb 2016 10:21:06 -0800
Message-ID: <CAMKF1sq6tRyHMfzDX7s=QaZxr8KsT+_kcFJLBkzqTPuc=oyLXA@mail.gmail.com>
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
X-List-Received-Date: Fri, 05 Feb 2016 18:21:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 5, 2016 at 10:12 AM, Nathan Sowatskey <nathan@nathan.to> wrote:
> file /usr/bin/testprog
> /usr/bin/testprog: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), d=
ynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 2=
.6.24, BuildID[sha1]=3D26317096ed83d21bc6808f0d2d47b12de1ab31ce, not stripp=
ed
>
> Thoughts?
>
>> On 5 Feb 2016, at 19:10, Fred Ollinger <Fred.Ollinger@seescan.com> wrote=
:
>>
>> The results should tell us:
>>
>> $ files /usr/bin/testprog
>>
>> What are they? (Sitting on the edge of my seat.)
>> ________________________________________
>> From: Nathan Sowatskey <nathan@nathan.to>
>> Sent: Friday, February 5, 2016 10:09 AM
>> To: Fred Ollinger
>> Cc: Burton, Ross; yocto@yoctoproject.org
>> Subject: Re: [yocto] libgcc_s not present in Yocto image
>>
>> Thanks Fred.
>>
>> I am using qemux86_64 on Intel i7 chips with OSX.  The target is likewis=
e Intel.
>>
>> I am assuming that is quite generic, but =E2=80=A6
>>
>> Regards
>>
>> Nathan
>>
>>> On 5 Feb 2016, at 19:06, Fred Ollinger <Fred.Ollinger@seescan.com> wrot=
e:
>>>
>>> My guess is that the executable is not compiled for his hardware.
>>>
>>>
>>> Frederick
>>>
>>> ________________________________
>>> From: Burton, Ross <ross.burton@intel.com>
>>> Sent: Friday, February 5, 2016 9:56 AM
>>> To: Nathan Sowatskey
>>> Cc: yocto@yoctoproject.org; Fred Ollinger
>>> Subject: Re: [yocto] libgcc_s not present in Yocto image
>>>
>>>
>>> On 5 February 2016 at 17:47, Nathan Sowatskey <nathan@nathan.to<mailto:=
nathan@nathan.to>> wrote:
>>> find /usr/lib -name libgcc_s.so.1
>>> root@qemux86-64:~#
>>>
>>> I don't have that lib.
>>>
>>> As I said, libgcc_s.so.1 is in /lib, not /usr/lib.
>>>
>>> With ldd I get:
>>>
>>> ldd /usr/bin/testprog
>>> /usr/bin/ldd: line 117: /usr/bin/testprog: No such file or directory
>>>


how did you compile /usr/bin/testprog

