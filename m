Return-Path: <priyaiitmandi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B958E0056E; Sat, 14 Mar 2015 23:23:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81F6DE0052B;
	Sat, 14 Mar 2015 23:23:01 -0700 (PDT)
Received: by igad1 with SMTP id d1so17376436iga.0;
	Sat, 14 Mar 2015 23:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=bzA2bT6HCeRK1EuV2yOQ9fBtVLVzz8eAmg4VgqSlZAA=;
	b=HsnTqpVjkh2K/k67oNdmHPJJcowsRFY9P/MnRC/sF6D9dXOdM3Yc/QdtvTh7ncper4
	xFpPZ4PdMiEKNSLzn7f02O8rCSFRLqC1XFfU42H9NF6UyHPghrE02Fd5yVX4Jtq1UY0O
	dEsY5iFOf7lamswMXkMT+7K+fm1HbR3BN5qjhm5/flHBhKdE+d9lgQ2ru9PMR2RsCkGt
	4EGS+EUqMBJIZDP+tJfalxTIgepIwdRNNL0w/PHuqSpXhdyyZ5VjfPWtRArsDzuJ98Jj
	2ujVA0OlPTj1fiqc/ghqV5ZvvIgIjG0PO9WO1FG5424RCgRBbRizOw08s3DN2NNeDGpu
	nkOg==
MIME-Version: 1.0
X-Received: by 10.107.148.198 with SMTP id w189mr9484292iod.14.1426400580520; 
	Sat, 14 Mar 2015 23:23:00 -0700 (PDT)
Sender: priyaiitmandi@gmail.com
Received: by 10.107.16.139 with HTTP; Sat, 14 Mar 2015 23:23:00 -0700 (PDT)
In-Reply-To: <CALTPfpHo8gStEcBYzjTe_+x1ihxJ7HPDyDBe_ZyLh5GyvH9U-g@mail.gmail.com>
References: <CALTPfpHK3-q9Xdv-ff_vgP7suRXuSzXEQVNq2wnbPj6hrosvdg@mail.gmail.com>
	<1426175606.12716.5.camel@besquive-mobl.amr.corp.intel.com>
	<CALTPfpGvW3mkeMq0ncWot-8LiUyf+c3xbi2TPfkh0CJLCzfiAQ@mail.gmail.com>
	<CALTPfpHo8gStEcBYzjTe_+x1ihxJ7HPDyDBe_ZyLh5GyvH9U-g@mail.gmail.com>
Date: Sun, 15 Mar 2015 11:53:00 +0530
X-Google-Sender-Auth: C6WyEhFWDIYr0f_NAao_LxHA1vY
Message-ID: <CALTPfpGB_fJPEiXvBzhV+QqzVhMRxuQFfRDoXJntfSjfQcTXPA@mail.gmail.com>
From: Priya Agarwal <priya_agarwal@students.iitmandi.ac.in>
To: benjamin.esquivel@linux.intel.com
Cc: "yocto-builds@yoctoproject.org" <yocto-builds@yoctoproject.org>,
	yocto@yoctoproject.org
Subject: Re: Linking of external libraries in the recipe
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
X-List-Received-Date: Sun, 15 Mar 2015 06:23:04 -0000
Content-Type: multipart/alternative; boundary=001a113ff6d8e8cf2805114dc3f9

--001a113ff6d8e8cf2805114dc3f9
Content-Type: text/plain; charset=UTF-8

I wrote the following in squid_3.4.7.bbappend:

DPENDS_append = "usdpaa"
EXTRA_OECONF_append = "
LDFLAGS=-L/media/NewVolume/yocto/build_t4240qds_release/tmp/sysroots/t4240qds/usr/lib/
\
            LIBS=-lusdpaa_dma -lusdpaa_dma_mem -lusdpaa_of -lusdpaa_fman
-lusdpaa_qbman -lusdpaa_syscfg \

CXXFLAGS=-I/media/NewVolume/yocto/build_t4240qds_release/tmp/sysroots/t4240qds/usr/include/"

So the error is that it is not able to recognize the option
-lusdpaa_dma_mem. ( I tried linking only 1 linrary, then it worked but when
I link more than 1 the 2nd one is unrecognized). oe_runconf is failing
basically. How to link all the libraries successfully?

Basically I have many static libraries in
/media/NewVolume/yocto/build_t4240qds_release/tmp/sysroots/t4240qds/usr/lib/
and I want to link all of them while building squid code. To do that I need
to run ./configure with these extra parameters LDFLAGS,LIBS,CXXFLAGS.



On Thu, Mar 12, 2015 at 10:39 PM, Priya Agarwal <
priya_agarwal@students.iitmandi.ac.in> wrote:

> Okay I think I understood. It has to be DEPENDS = "usdpaa" . Basically the
> recipe which is building the libraries is
> /meta-fsl-ppc/recipe-tools/usdpaa/usdpaa_git.bb.
> Thanks.
>
> On Thu, Mar 12, 2015 at 9:58 PM, Priya Agarwal <
> priya_agarwal@students.iitmandi.ac.in> wrote:
>
>> If the libraries are already generated during the build it might be a
>>> case where you just DEPENDS_append = " <libraryproviderpackage>" at
>>
>> he .bbappend file
>>
>>
>> I know where the libraries are but how do I make out which is the
>> package.
>> (The needed '.a' files are in ..../usdpaa/git-r5/git/lib_powerpc/*)
>>
>>
>>
>>
>>
>> On Thu, Mar 12, 2015 at 9:23 PM, Benjamin Esquivel <
>> benjamin.esquivel@linux.intel.com> wrote:
>>
>>> On Thu, 2015-03-12 at 18:00 +0530, Priya Agarwal wrote:
>>> > Hello,
>>> >
>>> >
>>> > I have taken a recipe for the package squid from OpenEmbedded.org and
>>> > have built it along with the kernel image.
>>> >
>>> >
>>> > Now I want to edit its recipe so that it will include some external
>>> > libraries.
>>> > But these libraries are the ones that are generated during the build.
>>> > So how do I edit the recipe to include those libraries?
>>> >
>>> Hi Priya, if you want to use a recipe and make some modifications to
>>> it's behavior it is recommended that you do it via a .bbappend file
>>>
>>>
>>> http://www.yoctoproject.org/docs/1.7.1/dev-manual/dev-manual.html#using-bbappend-files
>>>
>>> If the libraries are already generated during the build it might be a
>>> case where you just DEPENDS_append = " <libraryproviderpackage>" at
>>> the .bbappend file. When the dependiencies are resolved prior your
>>> recipe is built, the headers and libraries are placed in a special part
>>> of the working directory that the recipes know where to look for (if
>>> they don't deviate of the standard, of course).
>>>
>>> >
>>> > Location of
>>> > library:  ../yocto/<build-directory>/............/libusdpaa.a
>>> >
>>> >
>>> >
>>> > currently the do_compile task is failing as I have used an extra
>>> > function whose library I haven't included. Snippet of the error:
>>> >
>>> > | main.cc: In function 'int SquidMainSafe(int, char**)':
>>> > | main.cc:1259:10: error: 'of_init' was not declared in this scope
>>> > | make[3]: *** [main.o] Error 1
>>> > | make[3]: *** Waiting for unfinished jobs....
>>> > | make[3]: Leaving directory
>>> >
>>> `/media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/squid-3.4.7/src'
>>> > | make[2]: *** [all-recursive] Error 1
>>> > | make[2]: Leaving directory
>>> >
>>> `/media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/squid-3.4.7/src'
>>> > | make[1]: *** [all] Error 2
>>> > | make[1]: Leaving directory
>>> >
>>> `/media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/squid-3.4.7/src'
>>> > | make: *** [all-recursive] Error 1
>>> > | ERROR: oe_runmake failed
>>> > | ERROR: Function failed: do_compile
>>> > (see
>>> /media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/temp/log.do_compile.28810
>>> for further information)
>>> > ERROR: Task 799
>>> > (/media/NewVolume/yocto/meta-oe/meta-networking/recipes-daemons/squid/
>>> squid_3.4.7.bb, do_compile) failed with exit code '1'
>>> >
>>> >
>>> > I have attached my recipe.
>>> >
>>> >
>>> >
>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>>
>

--001a113ff6d8e8cf2805114dc3f9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>I wrote the following in squid_3.4.7.bbappe=
nd:<br><br>DPENDS_append =3D &quot;usdpaa&quot;<br>EXTRA_OECONF_append =3D =
&quot;=C2=A0=C2=A0=C2=A0 LDFLAGS=3D-L/media/NewVolume/yocto/build_t4240qds_=
release/tmp/sysroots/t4240qds/usr/lib/ \<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 LIBS=3D-lusdpaa_dma -lusdpaa_dma_mem -lusdpaa_of =
-lusdpaa_fman -lusdpaa_qbman -lusdpaa_syscfg \<br>=C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 CXXFLAGS=3D-I/media/NewVolume/yocto/build_t=
4240qds_release/tmp/sysroots/t4240qds/usr/include/&quot;<br></div><br></div=
>So the error is that it is not able to recognize the option -lusdpaa_dma_m=
em. ( I tried linking only 1 linrary, then it worked but when I link more t=
han 1 the 2nd one is unrecognized). oe_runconf is failing basically. How to=
 link all the libraries successfully?<br><br></div>Basically I have many st=
atic libraries in /media/NewVolume/yocto/build_t4240qds_release/tmp/sysroot=
s/t4240qds/usr/lib/ and I want to link all of them while building squid cod=
e. To do that I need to run ./configure with these extra parameters LDFLAGS=
,LIBS,CXXFLAGS.<br><div><div><div><br><br></div></div></div></div><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Mar 12, 2015 at 10=
:39 PM, Priya Agarwal <span dir=3D"ltr">&lt;<a href=3D"mailto:priya_agarwal=
@students.iitmandi.ac.in" target=3D"_blank">priya_agarwal@students.iitmandi=
.ac.in</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"=
ltr"><div>Okay I think I understood. It has to be DEPENDS =3D &quot;usdpaa&=
quot; . Basically the recipe which is building the libraries is=C2=A0 /meta=
-fsl-ppc/recipe-tools/usdpaa/<a href=3D"http://usdpaa_git.bb" target=3D"_bl=
ank">usdpaa_git.bb</a>.<br></div>Thanks.<br></div><div class=3D"HOEnZb"><di=
v class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On=
 Thu, Mar 12, 2015 at 9:58 PM, Priya Agarwal <span dir=3D"ltr">&lt;<a href=
=3D"mailto:priya_agarwal@students.iitmandi.ac.in" target=3D"_blank">priya_a=
garwal@students.iitmandi.ac.in</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><span><blockquote style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex" class=3D"g=
mail_quote">If the libraries are already generated during the build it migh=
t be a<br>
case where you just DEPENDS_append =3D &quot; &lt;libraryproviderpackage&gt=
;&quot; at=C2=A0</blockquote></span><blockquote style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex" class=3D"gm=
ail_quote">he .bbappend file</blockquote><div><br></div><div>I know where t=
he libraries are but how do I make out which is the package. <br></div><div=
>(The needed &#39;.a&#39; files are in ..../usdpaa/git-r5/git/lib_powerpc/*=
)<br></div><div><br><br><br>=C2=A0<br></div></div><div><div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On Thu, Mar 12, 2015 at 9:23 PM,=
 Benjamin Esquivel <span dir=3D"ltr">&lt;<a href=3D"mailto:benjamin.esquive=
l@linux.intel.com" target=3D"_blank">benjamin.esquivel@linux.intel.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span>On Thu, 2015-03-1=
2 at 18:00 +0530, Priya Agarwal wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt;<br>
&gt; I have taken a recipe for the package squid from OpenEmbedded.org and<=
br>
&gt; have built it along with the kernel image.<br>
&gt;<br>
&gt;<br>
&gt; Now I want to edit its recipe so that it will include some external<br=
>
&gt; libraries.<br>
&gt; But these libraries are the ones that are generated during the build.<=
br>
&gt; So how do I edit the recipe to include those libraries?<br>
&gt;<br>
</span>Hi Priya, if you want to use a recipe and make some modifications to=
<br>
it&#39;s behavior it is recommended that you do it via a .bbappend file<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/1.7.1/dev-manual/dev-manual.htm=
l#using-bbappend-files" target=3D"_blank">http://www.yoctoproject.org/docs/=
1.7.1/dev-manual/dev-manual.html#using-bbappend-files</a><br>
<br>
If the libraries are already generated during the build it might be a<br>
case where you just DEPENDS_append =3D &quot; &lt;libraryproviderpackage&gt=
;&quot; at<br>
the .bbappend file. When the dependiencies are resolved prior your<br>
recipe is built, the headers and libraries are placed in a special part<br>
of the working directory that the recipes know where to look for (if<br>
they don&#39;t deviate of the standard, of course).<br>
<div><div><br>
&gt;<br>
&gt; Location of<br>
&gt; library:=C2=A0 ../yocto/&lt;build-directory&gt;/............/libusdpaa=
.a<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; currently the do_compile task is failing as I have used an extra<br>
&gt; function whose library I haven&#39;t included. Snippet of the error:<b=
r>
&gt;<br>
&gt; | main.cc: In function &#39;int SquidMainSafe(int, char**)&#39;:<br>
&gt; | main.cc:1259:10: error: &#39;of_init&#39; was not declared in this s=
cope<br>
&gt; | make[3]: *** [main.o] Error 1<br>
&gt; | make[3]: *** Waiting for unfinished jobs....<br>
&gt; | make[3]: Leaving directory<br>
&gt; `/media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_n=
etworking-linux/squid/3.4.7-r0/squid-3.4.7/src&#39;<br>
&gt; | make[2]: *** [all-recursive] Error 1<br>
&gt; | make[2]: Leaving directory<br>
&gt; `/media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_n=
etworking-linux/squid/3.4.7-r0/squid-3.4.7/src&#39;<br>
&gt; | make[1]: *** [all] Error 2<br>
&gt; | make[1]: Leaving directory<br>
&gt; `/media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_n=
etworking-linux/squid/3.4.7-r0/squid-3.4.7/src&#39;<br>
&gt; | make: *** [all-recursive] Error 1<br>
&gt; | ERROR: oe_runmake failed<br>
&gt; | ERROR: Function failed: do_compile<br>
&gt; (see /media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-f=
sl_networking-linux/squid/3.4.7-r0/temp/log.do_compile.28810 for further in=
formation)<br>
&gt; ERROR: Task 799<br>
&gt; (/media/NewVolume/yocto/meta-oe/meta-networking/recipes-daemons/squid/=
<a href=3D"http://squid_3.4.7.bb" target=3D"_blank">squid_3.4.7.bb</a>, do_=
compile) failed with exit code &#39;1&#39;<br>
&gt;<br>
&gt;<br>
&gt; I have attached my recipe.<br>
&gt;<br>
&gt;<br>
&gt;<br>
<br>
<br>
</div></div><span><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a113ff6d8e8cf2805114dc3f9--
