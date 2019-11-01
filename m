Return-Path: <jk.behnke@web.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1EC2E00B7A; Fri,  1 Nov 2019 12:44:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jk.behnke[at]web.de)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.web.de (mout.web.de [212.227.15.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E74A5E0098A
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 12:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
	s=dbaedf251592; t=1572637441;
	bh=APauI8Wrosh4avmhw3x95V/HK2VX3R8dOYdRt8k67Jo=;
	h=X-UI-Sender-Class:Subject:To:References:Cc:From:Date:In-Reply-To;
	b=A5Jes/9VxHm5kEaLB8/O7CMEdSIXodkjn2Qk+LBR13/7oRg6wZYlW0KmYCnX4aUwk
	3OQpVstfKIrZS50WAUCBhaO60dc9JQ5W/1b0qfpHAIpGY0SDHfVGW/UyPx3BLNMnAg
	v/zViZqgPn7hBXVfGI9q1yFf06YUnSighf2vdXwE=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.2.102] ([93.234.10.162]) by smtp.web.de (mrweb002
	[213.165.67.108]) with ESMTPSA (Nemesis) id 0Lgpcs-1hdaz902mE-00oFp9;
	Fri, 01 Nov 2019 20:44:01 +0100
To: Khem Raj <raj.khem@gmail.com>
References: <trinity-9c767986-f846-4e0a-9b8c-834746d6fc80-1572599196046@3c-app-webde-bs43>
	<CAMKF1squJHoCUUTBtAPd=XyAq7UAtCxOgPHrVmX8=x3-3NEvDQ@mail.gmail.com>
From: Jochen Behnke <jk.behnke@web.de>
Message-ID: <d26cee9d-f185-a867-b978-110e93b17991@web.de>
Date: Fri, 1 Nov 2019 20:44:01 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1squJHoCUUTBtAPd=XyAq7UAtCxOgPHrVmX8=x3-3NEvDQ@mail.gmail.com>
X-Provags-ID: V03:K1:IXcTd59B1zRpqn7kf3YYmAAS2NnhdAfKopMZWre1YXSOff/Wr2Z
	u0bGorHnkTTYHTBHJzJLfm7UEQSaId563Ff/dzn+lKQpTPk5rAONEp73xklpB5r8/bR+hGm
	kon5QDkF7QHPTwrAo4HL2ciq4ceXZrD7WTpHwFFuk8Ve/RdMXFuX1rM8UuSXYBdeAMzziKf
	Czb75N/RLBUnGE4O5XH9w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:fN+FdqPZTDg=:nGeOf39PFZaqSfNg+0bENS
	AtduhRI1fmIKg4xCsyQeCFIyJrK9OCSBmq8aH/hKHxPr+P2+ByKLHs2hxDcr0SaMZQYN4vZk1
	bem5Wdd54X019O9vhzq1y2+tQ8556uRtqdImAl/I3LbPIebhihG3BosFiqQsnsY5VGuvHv4AO
	mdKypcV7YTQLhQa5D8AQrLWCBl6wynNZouPai13QjQ8McfefnwT+qquvqm6nvb4pWGnPY/fz6
	ZyV30nzxAYdVqtflHdnrfyPKgNPyZgkGvf7F+ztI+ih5A7fxyOY7XloqaggwSuo6yCyD+oC0q
	9XWdhxJsolISOdX4hDJo/AqmRcMLInj9+fdYZqWOBxgRNkI/lO2wg6ZMZHvINO81Li/NqACIx
	nQNfgMIOsqNv/JBCG+4Z9K39WGDAG9ZwPBYXBE8T5vNy6wNCu/0RGNN74G7AbqNIJzaAKAAwx
	L2OcLGX8ld6I/+2fznBbExzLvNei925JxEUn5jVgOoA1WOESQa3/+mxQSSdRbChbZ0BHwuaRF
	YGIqgIt8WYIjsmu2wysyxGm0Wq34JJ/+c2vmCz4Gt/xXMU4T6Gn/DsQGn/dUD/sNNpO3TFBwZ
	Ln5jb6oKIIcS345/Umch0ZDK2ul5qa1SOKazvG6ZM8PJiL802D2j02V+7kynfiOfdVu5C2vsq
	+sZYZ05jEePsZ266yKe07uFfcYCzCTZ3OdDggVtwxjZ/FbXdeuFvyKqoegkakW1O4w4jZDBmg
	St7TP14V8wf0ZsAv5oKPH0XBdLaKx5LmcubU2NgPb0p4vizAQZP0FwzpBf3naDJiweiHjL9hh
	rVx8LBzhnPNd/S+Oe2PLOAb02jN040o2GlAxpNHLNbEFcSEGbImqWqE/A6KBgANavFI1CG3nF
	zMKwL1wLqGkbNS3OuFWaHPDTUDj67bQRT6gZo1gORbNs6V5PgcJf+Ih+RxgJs6donJLyEOOnR
	GNMpExMrr4O52AAiRNqrg32dHJMWE2dz3jWJ0HSYi3l2jeZIZ6VABk+3CzprmjQFq1o0J299H
	bKn+2fqsMDU61rDle1MOgxCBybIvCy38fbljQTymQpVPVQf0bB3v+ID11gNjd0wXAaIajGoBR
	LUHgMZERLGG2Ar9H0v8dOyz73q2VYstd2k6amySYw/X3Y/5Jb9Q/PV27iLUE1JN/X8WnNiAW9
	+nb5oUVgGYqfAg/fp7d/dj9AcQJ9dxf3TPO/EFZ70KPSzCJpc8QhWHUETdQXpBBDdW4qiBCrp
	GHlN7WVYTviUJrU+GKi5SkvhhZirScPOjwR4I55e4d51hBEbXbIB0D/kvUsM=
Cc: yocto@yoctoproject.org
Subject: Re: poky thud: qtscript fails to build with undefined reference to `cti_vm_throw'
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
X-List-Received-Date: Fri, 01 Nov 2019 19:44:04 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: Deutsch - neue Rechtschreibung
Content-Transfer-Encoding: quoted-printable

> On Fri, Nov 1, 2019 at 2:12 AM <JK.Behnke@web.de> wrote:
>>
>> Hello,
>>
>> I tried to build a poky SDK with QT5 support (I am using poky thud).
>> Unfortunately this failed while bitbaking qtscript.
>> When executing "bitbake qtscript" directly I get the same error.
>>
>> Here are the IMHO relevant lines of the huge log.do_compile file.
>> I have replaced the long paths by <...> for clarity.
>>
>> -- multiple warnings ---
>> ...  warning: 'template<class> class std::auto_ptr' is deprecated [-Wde=
precated-declarations]
>> ---
>>
>> -- warning ---
>> In member function 'allocatePropertyStorageInline',
>>      inlined from 'allocatePropertyStorage' at <...>/git/src/3rdparty/j=
avascriptcore/JavaScriptCore/runtime/JSObject.cpp:546:34:
>> <...>/git/src/3rdparty/javascriptcore/JavaScriptCore/runtime/JSObject.h=
:679:68: warning: argument 1 value '4294967295' exceeds maximum object siz=
e 2147483647 [-Walloc-size-larger-than=3D]
>>       PropertyStorage newPropertyStorage =3D new EncodedJSValue[newSize=
];
>>                                                                      ^
>> <...>/git/src/3rdparty/javascriptcore/JavaScriptCore/runtime/JSObject.h=
: In member function 'allocatePropertyStorage':
>> <...>/recipe-sysroot/usr/include/c++/8.2.0/new:122:7: note: in a call t=
o allocation function 'operator new []' declared here
>>   void* operator new[](std::size_t) _GLIBCXX_THROW (std::bad_alloc)
>> ---
>>
>> --- error ---
>> <...>/recipe-sysroot-native/usr/bin/i686-poky-linux/../../libexec/i686-=
poky-linux/gcc/i686-poky-linux/8.2.0/ld: <...>/recipe-sysroot-native/usr/b=
in/i686-poky-linux/../../libexec/i686-poky-linux/gcc/i686-poky-linux/8.2.0=
/ld: DWARF error: invalid abstract instance DIE ref
>> /tmp/ccSwzRoN.ltrans0.ltrans.o: in function `ctiVMThrowTrampoline':
>> <artificial>:(.text+0x1f): undefined reference to `cti_vm_throw'
>> collect2: error: ld returned 1 exit status
>> Makefile:666: recipe for target '../../lib/libQt5Script.so.5.12.2' fail=
ed
>> ---
>>
>> Has anyone an idea what could be the problem?
>>
>
> perhaps we need to patch binutils/ld with
>
> https://patches-gcc.linaro.org/patch/9614/
>
> see
> https://sourceware.org/bugzilla/show_bug.cgi?id=3D23425
>
> if you could try it out and report back that would be awesome
>

Thanks for the quick response.
I'll give it a try next week, when I am back in the office.

Regards
Jochen

>> Thanks
>> Jochen
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


