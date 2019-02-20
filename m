Return-Path: <luciosantinell@libero.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FA72E00BCC; Wed, 20 Feb 2019 00:42:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (luciosantinell[at]libero.it)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [213.209.12.36 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from libero.it (smtp-36-i2.italiaonline.it [213.209.12.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC27BE0091D
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 00:42:21 -0800 (PST)
Received: from oxapps-10-060.iol.local ([10.101.8.70])
	by smtp-36.iol.local with ESMTPA
	id wNSOgsdCpfi5YwNSOgpldW; Wed, 20 Feb 2019 09:42:20 +0100
x-libjamoibt: 1601
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=libero.it; s=s2014;
	t=1550652140; bh=iIVYiwO0OerTLMYk3iMMxGx+tQ7ItrvLQgqNMbMmvw4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject;
	b=VlnpvpsAAeKar+qfLQAFOIGvOy98sCGADP05CGfHG6iM0HKLLN1jfr2CYzIjvkj3h
	k5Yk/Blw99sONG86RNjmBL4iqTsbEO0OJHAxBcZG6UnDIsnTHDmc0swoYBxpaRHtzv
	a7E5ZEwX1bKiXevGk+GO0CS0qDzGZRQPNBFD9phcqKFyld6efcy72P2mNDrOl7kdGB
	w8TCQqR/8Uxf7SlcYWeV+2CiAGvCqAsPhJPtn7mySdghB1YFl+p34OK3RRW81Ckn+4
	C6rhlfJo6+L+H8Y5Yif1toEC44bX7oc9ofssFD9ywksJ6BmeJfb8RiNKFXTajzBPiv
	dbGtNzDofkkcA==
X-CNFS-Analysis: v=2.3 cv=R+jS5uZX c=1 sm=1 tr=0
	a=N6tDZBjKOqonna1m1e4Nkw==:117 a=1VHoG3c1NY8A:10 a=1Y-2xJgGt1QA:10
	a=pGLkceISAAAA:8 a=iGHA9ds3AAAA:8 a=97XY-hHq8K2qrQ0BsH4A:9
	a=QEXdDO2ut3YA:10
	a=JNqunw1b6nBgjD_kqtQA:9 a=G7SdsRTq3v7GSvGh:21 a=_W_S_7VecoQA:10
	a=nM-MV4yxpKKO9kiQg6Ot:22
Date: Wed, 20 Feb 2019 09:42:20 +0100 (CET)
From: luciosantinell@libero.it
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <573688103.446697.1550652140576@mail.libero.it>
In-Reply-To: <CAMKF1sqSdKEnWfar6npeHwqV84tbbdV+_afMA4jJSHTdbXTe+Q@mail.gmail.com>
References: <279332559.340239.1550504527934@mail.libero.it>
	<CAMKF1sqSdKEnWfar6npeHwqV84tbbdV+_afMA4jJSHTdbXTe+Q@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev52
X-Originating-IP: 87.9.31.50
X-Originating-Client: open-xchange-appsuite
x-libjamsun: SiFFMSeMaT202CnW5PWlhysI+jICAk+fM1ZyBD+x+Ig=
x-libjamv: /pSQmg1fBCw=
X-CMAE-Envelope: MS4wfGfFLZMEr69DhiSj7+Emjn3WMfGxrB7LijktecXz//RV5qbde38zlAnxK1N4JR8nLXoNHOuPS6TT6l+A/hX0qhUdWf6brvkXRdQbkrzojD956Gls0tGg
	1hKTm77K6zy3icRD5RfPQb6BCoOH9N/Ilww+vqVcWXM/JKQPmO10w0kpx6x5sETPoDENeaQfZBILCwxy+E9fOHXHAqXrjK6PNAEN8Z59bdvKCOnffA7eiJku
Cc: yocto@yoctoproject.org
Subject: Re: Add new compiler macro
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
X-List-Received-Date: Wed, 20 Feb 2019 08:42:22 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_446696_1374520577.1550652140572"

------=_Part_446696_1374520577.1550652140572
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

i tried to add CFLAGS += "-MMC_WRITE"
(i dont know if -DMMC_WRITE was a typo or not and tryed both) 

i dont get any error but in my recipes the code wrapped in
#ifdef MMC_WRITE
#endif

is not compiled... i even tried to add a sintax error between the ifdef so, if compiler see MMC_WRITE macro, i should get a compiler error but i don't. 

Im still missing something?

code example :

#ifdef MMC_WRITE
        dev_info(host->parent , "retune_now MMC !!! \n\r"); asdasdasd  //asdasdasdasd is a syntax error that should came out

#elif SD_WRITE

Thanks

> 
>     Il 18 febbraio 2019 alle 16.45 Khem Raj <raj.khem@gmail.com> ha scritto:
> 
>     On Mon, Feb 18, 2019 at 7:43 AM <luciosantinell@libero.it> wrote:
>     >
> 
>         > > 
> >         Hi, i wanted to add a compiler macro (NEW_MACRO) in order to compile all the code hidden beetween
> > 
> >         #ifdef NEW_MACRO
> > 
> >         #endif
> >         in all my recipes. I think that the right place to do that is in bitbake.conf file present under poky/meta/conf but when i try to do:
> > 
> >         TARGET_CPPFLAGS += "-MMC_WRITE"
> > 
> >     > 
>     it depends on recipes respecting compiler flags from environment but
>     most of them do.
> 
>     CFLAGS += "-DMMC_WRITE" could do it.
> 
>     >
> 
>         > > 
> >         I get the error :
> >         configure: error: cannot compute suffix of object files: cannot compile
> > 
> >         How can i send the macro to the compiler in the correct way?
> > 
> >         Thanks
> > 
> >         --
> > 
> >         _______________________________________________
> >         yocto mailing list
> >         yocto@yoctoproject.org
> >         https://lists.yoctoproject.org/listinfo/yocto
> > 
> >     > 

------=_Part_446696_1374520577.1550652140572
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html><head>
    <meta charset=3D"UTF-8">
</head><body><p>Hi, <br><br>i tried to add CFLAGS +=3D &#34;-MMC_WRITE&#34;=
<br>(i dont know if -DMMC_WRITE was a typo or not and tryed both)&#160;<br>=
<br>i dont get any error but in my recipes the code wrapped in <br>#ifdef M=
MC_WRITE<br>#endif<br><br>is not compiled... i even tried to add a sintax e=
rror between the ifdef so, if compiler see MMC_WRITE macro, i should get a =
compiler error but i don&#39;t.&#160;<br><br>Im still missing something? <b=
r><br>code example : <br><br>#ifdef MMC_WRITE<br>&#160;&#160; &#160;&#160;&=
#160; &#160;dev_info(host-&#62;parent , &#34;retune_now MMC !!! \n\r&#34;);=
 asdasdasd&#160; //asdasdasdasd is a syntax error that should came out<br><=
/p><p>#elif SD_WRITE<br></p><p>Thanks</p><blockquote><p>Il 18 febbraio 2019=
 alle 16.45 Khem Raj &#60;raj.khem@gmail.com&#62; ha scritto:</p><p>On Mon,=
 Feb 18, 2019 at 7:43 AM &#60;luciosantinell@libero.it&#62; wrote:<br>&#62;=
</p><blockquote><p>Hi, i wanted to add a compiler macro (NEW_MACRO) in orde=
r to compile all the code hidden beetween</p><p>#ifdef NEW_MACRO</p><p>#end=
if<br>in all my recipes. I think that the right place to do that is in bitb=
ake.conf file present under poky/meta/conf but when i try to do:</p><p>TARG=
ET_CPPFLAGS +=3D &#34;-MMC_WRITE&#34;</p></blockquote><p>it depends on reci=
pes respecting compiler flags from environment but<br>most of them do.</p><=
p>CFLAGS +=3D &#34;-DMMC_WRITE&#34; could do it.</p><p>&#62;</p><blockquote=
><p>I get the error :<br>configure: error: cannot compute suffix of object =
files: cannot compile</p><p>How can i send the macro to the compiler in the=
 correct way?</p><p>Thanks</p><p>--</p><p>_________________________________=
______________<br>yocto mailing list<br>yocto@yoctoproject.org<br><a href=
=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproje=
ct.org/listinfo/yocto</a><br></p></blockquote></blockquote></body></html>
=20

------=_Part_446696_1374520577.1550652140572--
