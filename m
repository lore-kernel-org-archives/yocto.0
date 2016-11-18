Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35E40E00C31; Fri, 18 Nov 2016 07:00:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	MISSING_HEADERS,RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.193 listed in dnsbl.sorbs.net]
	*  1.0 MISSING_HEADERS Missing To: header
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.193 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDC6FE00C22
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2016 07:00:46 -0800 (PST)
Received: by mail-ua0-f193.google.com with SMTP id b35so18042833uaa.1
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2016 07:00:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:cc; 
	bh=Knz+NWkv/D88xkMTMuRm40mhydeIiTZrKZYM9olve1c=;
	b=ohQKI1AbTojjdpBa8T26iRtSoy6bi9uQWwIyFO9b+hPpAiaWXaW6UCuujjQFCeqpHz
	mttFW3k9McdT4jRVy2LtfOiS/m1oKQdS6Q7qcLtUzewG6Qr0L1Cu8oIHdN2bdQvnYeDl
	YlffiCETfXS0D5YNI+WBPa/8kCrn7vUg8xvlD7/4p13Xn4pNesEO7vgzzb9ZrFpnYOPR
	Lqa5cqbuf0xCF3FCV3RYWKOLWqLo/pkPUPKUY/MbaUS13EkHZC41VpR56+mmUGKkkPV9
	2u03I/Mb5kkj371wNzndUF3YMWur+2T94VdQj8+AunNzGbxQ4DHnLL3ylvPtPSqLZhFc
	sTCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:cc;
	bh=Knz+NWkv/D88xkMTMuRm40mhydeIiTZrKZYM9olve1c=;
	b=hKNlbh4eue/z5lNIajY53dB97wf5LSfXVGxVN5hcHMXCP7l3KxSqfS2U3rqhlYwhBe
	8Chzm0vpJsrWlBTDxrKsqlP4fJb7Z187a28T5Yq1fcqT0HfaSF00nQMflESghFGCDD05
	qVH9aRjODmZDl1fgUqb9OhDvH6cNKDCjxQIAcZeNa20MOEG+TJUPLsTs4UP3XnyPxTrv
	Dv7YvZl3Ag9Wqnvu3qxcefSokrED9+kO4OrbqabaVo9pDK2d0wNCcWMPoT5uX+tEK0LP
	G2JPFFIceSLtcS9UATciFEIZYm0PNJ7ql3lM30wg6MEgw+LPurNu8Waz/QJIDcW6GQTZ
	dyow==
X-Gm-Message-State: AKaTC037scnnd5APPeGAeCa1tM63W20aunZKe9o5VCL+KU3cZX2etjBpc8wwqOTTyIRwvGVE8LodKaFHPHejzA==
X-Received: by 10.176.0.147 with SMTP id 19mr82549uaj.20.1479481245696; Fri,
	18 Nov 2016 07:00:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.4.129 with HTTP; Fri, 18 Nov 2016 07:00:45 -0800 (PST)
In-Reply-To: <CAHNTFmLF531v9bQaDpo0dXxCNftq9PO_Ovmwd8yUWSiR7wVSsg@mail.gmail.com>
References: <CAHNTFm+FxmRv5OOf9geKdQ_hPfzcoi-chviAWDmy1jK_aDTHnQ@mail.gmail.com>
	<2e4225b6-42ed-26f4-d158-75c96214d98f@gmail.com>
	<CAHNTFmLF531v9bQaDpo0dXxCNftq9PO_Ovmwd8yUWSiR7wVSsg@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 18 Nov 2016 13:00:45 -0200
Message-ID: <CAF3SDA4KAw53kXoU73B3GB+HYLcLqaJ2WPtg3BdEKzwxL5h9rg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: undefined references to `__dso_handle'
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
X-List-Received-Date: Fri, 18 Nov 2016 15:00:48 -0000
Content-Type: multipart/alternative; boundary=001a113dda601a0b91054194925f

--001a113dda601a0b91054194925f
Content-Type: text/plain; charset=UTF-8

Hi,

Did you have multilib installed!?

Regards,

2016-11-17 15:27 GMT-02:00 Elazar Leibovich <elazarl@gmail.com>:

> As far as I  know, no customization, I didn't even switch GCC's version. I
> installed clang alongside gcc, but didn't change the default.
>
> Can you refer me to what you have in mind that might be customized, and
> I'll check?
>
> On Thu, Nov 17, 2016 at 7:23 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>>
>>
>> On 11/16/16 2:05 AM, Elazar Leibovich wrote:
>> > Hi,
>> >
>> > I followed the quickstart tutorial, branch morty, to create the most
>> basic
>> > image on local QEMU, and I got compilation errors for __dso_handle
>> missing.
>> > I'm using ubuntu 16.
>> > Here is an example output:
>> > ++ -nostdlib++  -fPIC -DPIC -D_GLIBCXX_SHARED -shared -nostdlib
>> > /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
>> raspberrypi3/usr/lib/crti.o
>> > /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
>> raspberrypi3/usr/lib/arm-poky-linux-gnueabi/6.2.0/crtbeginS.o
>> >  .libs/compatibility.o .libs/compatibility-debug_list.o
>> > .libs/compatibility-debug_list-2.o .libs/compatibility-c++0x.o
>> > .libs/compatibility-atomic-c++0x.o .libs/compatibility-thread-c++0x.o
>> > .libs/compatibility-chrono.o .libs/compatibility-condvar.o
>> >  -Wl,--whole-archive ../libsupc++/.libs/libsupc++convenience.a
>> > ../src/c++98/.libs/libc++98convenience.a
>> > ../src/c++11/.libs/libc++11convenience.a -Wl,--no-whole-archive  -lm
>> > -L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
>> x86_64-linux/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-
>> linux-gnueabi/6.2.0
>> > -L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
>> raspberrypi3/lib
>> > -L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
>> raspberrypi3/usr/lib/arm-poky-linux-gnueabi/6.2.0
>> > -L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
>> raspberrypi3/usr/lib
>> > -lc -lgcc_s
>> > /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
>> raspberrypi3/usr/lib/arm-poky-linux-gnueabi/6.2.0/crtendS.o
>> > /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/
>> raspberrypi3/usr/lib/crtn.o
>> >  -march=armv7ve -marm -mfpu=neon-vfpv4 -mfloat-abi=hard -mcpu=cortex-a7
>> > -Wl,-O1 -Wl,-z -Wl,relro -Wl,--gc-sections -Wl,-O1 -Wl,--hash-style=gnu
>> > -Wl,--as-needed -Wl,--version-script=libstdc++-symbols.ver
>>  -Wl,-soname
>> > -Wl,libstdc++.so.6 -o .libs/libstdc++.so.6.0.22
>> > | .libs/compatibility-c++0x.o: In function
>> > `__static_initialization_and_destruction_0':
>> > |
>> > /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky
>> -linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi
>> /libstdc++-v3/src/../../../../../../../../../work-shared/
>> gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++11/compatibility-c++0x.cc:215:
>> > undefined reference to `__dso_handle'
>> > | ../src/c++11/.libs/libc++11convenience.a(system_error.o): In function
>> > `__static_initialization_and_destruction_0':
>> > |
>> > /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky
>> -linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi
>> /libstdc++-v3/src/c++11/../../../../../../../../../../work-
>> shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++11/system_error.cc:71:
>> > undefined reference to `__dso_handle'
>> > | ../src/c++98/.libs/libc++98convenience.a(mt_allocator.o): In function
>> > `get_freelist':
>> > |
>> > /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky
>> -linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi
>> /libstdc++-v3/src/c++98/../../../../../../../../../../work-
>> shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++98/mt_allocator.cc:64:
>> > undefined reference to `__dso_handle'
>> > | ../src/c++98/.libs/libc++98convenience.a(c++locale.o): In function
>> > `std::get_catalogs()':
>> > |
>> > /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky
>> -linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi
>> /libstdc++-v3/src/c++98/c++locale.cc:251:
>> > undefined reference to `__dso_handle'
>> > | ../src/c++11/.libs/libc++11convenience.a(condition_variable.o): In
>> function
>> > `key_init':
>> > |
>> > /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky
>> -linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi
>> /libstdc++-v3/src/c++11/../../../../../../../../../../work-
>> shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++11/
>> condition_variable.cc:133:
>> > undefined reference to `__dso_handle'
>> > |
>> > ../src/c++11/.libs/libc++11convenience.a(future.o):/usr/src/
>> debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky-linux
>> -gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/
>> libstdc++-v3/src/c++11/../../../../../../../../../../work-
>> shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++11/future.cc:64:
>> > more undefined references to `__dso_handle' follow
>> > | collect2: error: ld returned 1 exit status
>> >
>> > I'll be happy for help, haven't found similar error when searching the
>> web
>>
>> is it pristine ubuntu 16.04 or do you have any customization, new
>> packages etc
>> installed on top
>>
>> >
>> >
>>
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a113dda601a0b91054194925f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br></div>Did you have multilib installed=
!?<br><br></div>Regards,<br></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">2016-11-17 15:27 GMT-02:00 Elazar Leibovich <span dir=3D"l=
tr">&lt;<a href=3D"mailto:elazarl@gmail.com" target=3D"_blank">elazarl@gmai=
l.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">As=
 far as I =C2=A0know, no customization, I didn&#39;t even switch GCC&#39;s =
version. I installed clang alongside gcc, but didn&#39;t change the default=
.<div><br></div><div>Can you refer me to what you have in mind that might b=
e customized, and I&#39;ll check?=C2=A0</div></div><div class=3D"HOEnZb"><d=
iv class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">O=
n Thu, Nov 17, 2016 at 7:23 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div class=3D"m_-17982893572528=
38963HOEnZb"><div class=3D"m_-1798289357252838963h5"><br>
<br>
On 11/16/16 2:05 AM, Elazar Leibovich wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I followed the quickstart tutorial, branch morty, to create the most b=
asic<br>
&gt; image on local QEMU, and I got compilation errors for __dso_handle mis=
sing.<br>
&gt; I&#39;m using ubuntu 16.<br>
&gt; Here is an example output:<br>
&gt; ++ -nostdlib++=C2=A0 -fPIC -DPIC -D_GLIBCXX_SHARED -shared -nostdlib<b=
r>
&gt; /media/elazar/788854CC88548B10<wbr>/poky/build/tmp/sysroots/<wbr>raspb=
errypi3/usr/lib/crti.o<br>
&gt; /media/elazar/788854CC88548B10<wbr>/poky/build/tmp/sysroots/<wbr>raspb=
errypi3/usr/lib/arm-poky-<wbr>linux-gnueabi/6.2.0/crtbeginS.<wbr>o<br>
&gt;=C2=A0 .libs/compatibility.o .libs/compatibility-debug_list<wbr>.o<br>
&gt; .libs/compatibility-debug_list<wbr>-2.o .libs/compatibility-c++0x.o<br=
>
&gt; .libs/compatibility-atomic-c++<wbr>0x.o .libs/compatibility-thread-c++=
<wbr>0x.o<br>
&gt; .libs/compatibility-chrono.o .libs/compatibility-condvar.o<br>
&gt;=C2=A0 -Wl,--whole-archive ../libsupc++/.libs/libsupc++co<wbr>nvenience=
.a<br>
&gt; ../src/c++98/.libs/libc++98con<wbr>venience.a<br>
&gt; ../src/c++11/.libs/libc++11con<wbr>venience.a -Wl,--no-whole-archive=
=C2=A0 -lm<br>
&gt; -L/media/elazar/788854CC88548B<wbr>10/poky/build/tmp/sysroots/<wbr>x86=
_64-linux/usr/lib/arm-poky-<wbr>linux-gnueabi/gcc/arm-poky-<wbr>linux-gnuea=
bi/6.2.0<br>
&gt; -L/media/elazar/788854CC88548B<wbr>10/poky/build/tmp/sysroots/<wbr>ras=
pberrypi3/lib<br>
&gt; -L/media/elazar/788854CC88548B<wbr>10/poky/build/tmp/sysroots/<wbr>ras=
pberrypi3/usr/lib/arm-poky-<wbr>linux-gnueabi/6.2.0<br>
&gt; -L/media/elazar/788854CC88548B<wbr>10/poky/build/tmp/sysroots/<wbr>ras=
pberrypi3/usr/lib<br>
&gt; -lc -lgcc_s<br>
&gt; /media/elazar/788854CC88548B10<wbr>/poky/build/tmp/sysroots/<wbr>raspb=
errypi3/usr/lib/arm-poky-<wbr>linux-gnueabi/6.2.0/crtendS.o<br>
&gt; /media/elazar/788854CC88548B10<wbr>/poky/build/tmp/sysroots/<wbr>raspb=
errypi3/usr/lib/crtn.o<br>
&gt;=C2=A0 -march=3Darmv7ve -marm -mfpu=3Dneon-vfpv4 -mfloat-abi=3Dhard -mc=
pu=3Dcortex-a7<br>
&gt; -Wl,-O1 -Wl,-z -Wl,relro -Wl,--gc-sections -Wl,-O1 -Wl,--hash-style=3D=
gnu<br>
&gt; -Wl,--as-needed -Wl,--version-script=3Dlibstdc++<wbr>-symbols.ver=C2=
=A0 =C2=A0-Wl,-soname<br>
&gt; -Wl,libstdc++.so.6 -o .libs/libstdc++.so.6.0.22<br>
&gt; | .libs/compatibility-c++0x.o: In function<br>
&gt; `__static_initialization_and_d<wbr>estruction_0&#39;:<br>
&gt; |<br>
&gt; /usr/src/debug/gcc-runtime/6.2<wbr>.0-r0/gcc-6.2.0/build.arm-poky<wbr>=
-linux-gnueabi.arm-poky-linux-<wbr>gnueabi/arm-poky-linux-gnueabi<wbr>/libs=
tdc++-v3/src/../../../../<wbr>../../../../../work-shared/<wbr>gcc-6.2.0-r0/=
gcc-6.2.0/libstdc<wbr>++-v3/src/c++11/compatibility-<wbr>c++0x.cc:215:<br>
&gt; undefined reference to `__dso_handle&#39;<br>
&gt; | ../src/c++11/.libs/libc++11con<wbr>venience.a(system_error.o): In fu=
nction<br>
&gt; `__static_initialization_and_d<wbr>estruction_0&#39;:<br>
&gt; |<br>
&gt; /usr/src/debug/gcc-runtime/6.2<wbr>.0-r0/gcc-6.2.0/build.arm-poky<wbr>=
-linux-gnueabi.arm-poky-linux-<wbr>gnueabi/arm-poky-linux-gnueabi<wbr>/libs=
tdc++-v3/src/c++11/../../<wbr>../../../../../../../../work-<wbr>shared/gcc-=
6.2.0-r0/gcc-6.2.0/<wbr>libstdc++-v3/src/c++11/system_<wbr>error.cc:71:<br>
&gt; undefined reference to `__dso_handle&#39;<br>
&gt; | ../src/c++98/.libs/libc++98con<wbr>venience.a(mt_allocator.o): In fu=
nction<br>
&gt; `get_freelist&#39;:<br>
&gt; |<br>
&gt; /usr/src/debug/gcc-runtime/6.2<wbr>.0-r0/gcc-6.2.0/build.arm-poky<wbr>=
-linux-gnueabi.arm-poky-linux-<wbr>gnueabi/arm-poky-linux-gnueabi<wbr>/libs=
tdc++-v3/src/c++98/../../<wbr>../../../../../../../../work-<wbr>shared/gcc-=
6.2.0-r0/gcc-6.2.0/<wbr>libstdc++-v3/src/c++98/mt_<wbr>allocator.cc:64:<br>
&gt; undefined reference to `__dso_handle&#39;<br>
&gt; | ../src/c++98/.libs/libc++98con<wbr>venience.a(c++locale.o): In funct=
ion<br>
&gt; `std::get_catalogs()&#39;:<br>
&gt; |<br>
&gt; /usr/src/debug/gcc-runtime/6.2<wbr>.0-r0/gcc-6.2.0/build.arm-poky<wbr>=
-linux-gnueabi.arm-poky-linux-<wbr>gnueabi/arm-poky-linux-gnueabi<wbr>/libs=
tdc++-v3/src/c++98/c++<wbr>locale.cc:251:<br>
&gt; undefined reference to `__dso_handle&#39;<br>
&gt; | ../src/c++11/.libs/libc++11con<wbr>venience.a(condition_variable.<wb=
r>o): In function<br>
&gt; `key_init&#39;:<br>
&gt; |<br>
&gt; /usr/src/debug/gcc-runtime/6.2<wbr>.0-r0/gcc-6.2.0/build.arm-poky<wbr>=
-linux-gnueabi.arm-poky-linux-<wbr>gnueabi/arm-poky-linux-gnueabi<wbr>/libs=
tdc++-v3/src/c++11/../../<wbr>../../../../../../../../work-<wbr>shared/gcc-=
6.2.0-r0/gcc-6.2.0/<wbr>libstdc++-v3/src/c++11/<wbr>condition_variable.cc:1=
33:<br>
&gt; undefined reference to `__dso_handle&#39;<br>
&gt; |<br>
&gt; ../src/c++11/.libs/libc++11con<wbr>venience.a(future.o):/usr/src/<wbr>=
debug/gcc-runtime/6.2.0-r0/<wbr>gcc-6.2.0/build.arm-poky-linux<wbr>-gnueabi=
.arm-poky-linux-gnueab<wbr>i/arm-poky-linux-gnueabi/<wbr>libstdc++-v3/src/c=
++11/../../.<wbr>./../../../../../../../work-<wbr>shared/gcc-6.2.0-r0/gcc-6=
.2.0/<wbr>libstdc++-v3/src/c++11/future.<wbr>cc:64:<br>
&gt; more undefined references to `__dso_handle&#39; follow<br>
&gt; | collect2: error: ld returned 1 exit status<br>
&gt;<br>
&gt; I&#39;ll be happy for help, haven&#39;t found similar error when searc=
hing the web<br>
<br>
</div></div>is it pristine ubuntu 16.04 or do you have any customization, n=
ew packages etc<br>
installed on top<br>
<br>
&gt;<br>
&gt;<br>
<br>
</blockquote></div><br></div>
</div></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div style=3D"text-align:rig=
ht"><i>&quot;Do or do not. There is no try&quot;</i><br><i>=C2=A0 </i><i><b=
>Yoda Master</b></i><br></div></div>
</div>

--001a113dda601a0b91054194925f--
