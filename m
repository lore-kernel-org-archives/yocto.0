Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 902EFE009F0; Mon,  6 Jul 2015 14:12:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55DE8E00978
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2015 14:12:40 -0700 (PDT)
Received: by qgii30 with SMTP id i30so75536561qgi.1
	for <yocto@yoctoproject.org>; Mon, 06 Jul 2015 14:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Zd2NVSgyl3k86H9t5xzeGbBvlZUMEpE9VCi79uUEmu0=;
	b=UOVISaARidqPzb8G21GpLgeMJhKBuT43zX1Nwaz/19NnZb/2AUDcjNR7XM69GFITJ4
	dm5BwxYH/k8LFG9sYrfxJApyrQx8+LeSfmY+ycv7hi5cS9Uu9PbcV20zRMtvmFRTrUbn
	FVXUHkhyBlY5kDK7zLGY4UcpLfj7o0rQJ/eSfvtTrn6kUgpBl9bkUYIVWyRafqooXvFJ
	ot7JrpKCOV8+TqNsZSb4+xCXOuj0AmbdQIXNCvJHttjcY1Heg6L0AH3wghPyobjn8dIt
	+jGUghCHKfeBnMr6+Lo/g6JdcXKPvzPLaJTYJ1H2R1YlT82V/xQolEj37wMvWkPJ2WvU
	4vzw==
MIME-Version: 1.0
X-Received: by 10.140.34.135 with SMTP id l7mr1435306qgl.79.1436217160424;
	Mon, 06 Jul 2015 14:12:40 -0700 (PDT)
Received: by 10.96.179.74 with HTTP; Mon, 6 Jul 2015 14:12:40 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1502190508290.29947@localhost>
References: <alpine.LFD.2.11.1502190508290.29947@localhost>
Date: Mon, 6 Jul 2015 18:12:40 -0300
Message-ID: <CAF3SDA6sUY=4cg-pihtftzTNDREm5cKMS7MqQp4DJ9M81ez5UQ@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: "cross-localedef-native" build error (with gcc-5.0.0)
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
X-List-Received-Date: Mon, 06 Jul 2015 21:12:45 -0000
Content-Type: multipart/alternative; boundary=001a11c10986aafed6051a3b5d28

--001a11c10986aafed6051a3b5d28
Content-Type: text/plain; charset=UTF-8

Any progress on this? I got the same problem, also ncurses-native fails to
build with GCC >= 5.0

Best regards

- dhs

2015-02-19 8:11 GMT-02:00 Robert P. J. Day <rpjday@crashcourse.ca>:

>
>   didn't see any mention of this in YP's bugzilla:
>
> gcc  -o localedef charmap.o charmap-dir.o ld-address.o ld-collate.o
> ld-ctype.o ld-identification.o ld-measurement.o ld-messages.o ld-monetary.o
> ld-name.o ld-numeric.o ld-paper.o ld-telephone.o ld-time.o linereader.o
> localedef.o locarchive.o locfile.o repertoire.o simple-hash.o xmalloc.o
> xstrdup.o argp-ba.o argp-eexst.o argp-fmtstream.o argp-help.o argp-parse.o
> argp-pv.o argp-xinl.o error.o getopt.o getopt1.o md5.o obstack.o asprintf.o
> getdelim.o localedef_extra.o obstack_printf.o vasprintf.o
> argp-help.o: In function `argp_fmtstream_write':
> argp-help.c:(.text+0x1da0): multiple definition of `argp_fmtstream_write'
> argp-fmtstream.o:argp-fmtstream.c:(.text+0x7a0): first defined here
> argp-help.o: In function `argp_fmtstream_puts':
> argp-help.c:(.text+0x1df0): multiple definition of `argp_fmtstream_puts'
> argp-fmtstream.o:argp-fmtstream.c:(.text+0x860): first defined here
> argp-help.o: In function `argp_fmtstream_putc':
> argp-help.c:(.text+0x1e60): multiple definition of `argp_fmtstream_putc'
> argp-fmtstream.o:argp-fmtstream.c:(.text+0x800): first defined here
> argp-help.o: In function `argp_fmtstream_set_lmargin':
> argp-help.c:(.text+0x1eb0): multiple definition of
> `argp_fmtstream_set_lmargin'
> argp-fmtstream.o:argp-fmtstream.c:(.text+0x5e0): first defined here
> argp-help.o: In function `argp_fmtstream_set_rmargin':
> argp-help.c:(.text+0x1ee0): multiple definition of
> `argp_fmtstream_set_rmargin'
> argp-fmtstream.o:argp-fmtstream.c:(.text+0x610): first defined here
> argp-help.o: In function `argp_fmtstream_set_wmargin':
> argp-help.c:(.text+0x1f10): multiple definition of
> `argp_fmtstream_set_wmargin'
> argp-fmtstream.o:argp-fmtstream.c:(.text+0x640): first defined here
> argp-help.o: In function `argp_fmtstream_point':
> argp-help.c:(.text+0x1f40): multiple definition of `argp_fmtstream_point'
> argp-fmtstream.o:argp-fmtstream.c:(.text+0x670): first defined here
> collect2: error: ld returned 1 exit status
> Makefile:59: recipe for target 'localedef' failed
> make: *** [localedef] Error 1
> ERROR: oe_runmake failed
> WARNING:
> /home/rpjday/oe/builds/vtss/minimal/tmp/work/x86_64-linux/cross-localedef-native/2.20-r0/temp/run.do_compile.27985:1
> exit 1 from
>   exit 1
> ERROR: Function failed: do_compile (log file is located at
> /home/rpjday/oe/builds/vtss/minimal/tmp/work/x86_64-linux/cross-localedef-native/2.20-r0/temp/log.do_compile.27985)
>
>   is this a known issue?
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a11c10986aafed6051a3b5d28
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Any progress on this? I got the same problem, al=
so ncurses-native fails to build with GCC &gt;=3D 5.0<br><br></div>Best reg=
ards<br><br></div>- dhs<br></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">2015-02-19 8:11 GMT-02:00 Robert P. J. Day <span dir=3D"lt=
r">&lt;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@cr=
ashcourse.ca</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
=C2=A0 didn&#39;t see any mention of this in YP&#39;s bugzilla:<br>
<br>
gcc=C2=A0 -o localedef charmap.o charmap-dir.o ld-address.o ld-collate.o ld=
-ctype.o ld-identification.o ld-measurement.o ld-messages.o ld-monetary.o l=
d-name.o ld-numeric.o ld-paper.o ld-telephone.o ld-time.o linereader.o loca=
ledef.o locarchive.o locfile.o repertoire.o simple-hash.o xmalloc.o xstrdup=
.o argp-ba.o argp-eexst.o argp-fmtstream.o argp-help.o argp-parse.o argp-pv=
.o argp-xinl.o error.o getopt.o getopt1.o md5.o obstack.o asprintf.o getdel=
im.o localedef_extra.o obstack_printf.o vasprintf.o<br>
argp-help.o: In function `argp_fmtstream_write&#39;:<br>
argp-help.c:(.text+0x1da0): multiple definition of `argp_fmtstream_write&#3=
9;<br>
argp-fmtstream.o:argp-fmtstream.c:(.text+0x7a0): first defined here<br>
argp-help.o: In function `argp_fmtstream_puts&#39;:<br>
argp-help.c:(.text+0x1df0): multiple definition of `argp_fmtstream_puts&#39=
;<br>
argp-fmtstream.o:argp-fmtstream.c:(.text+0x860): first defined here<br>
argp-help.o: In function `argp_fmtstream_putc&#39;:<br>
argp-help.c:(.text+0x1e60): multiple definition of `argp_fmtstream_putc&#39=
;<br>
argp-fmtstream.o:argp-fmtstream.c:(.text+0x800): first defined here<br>
argp-help.o: In function `argp_fmtstream_set_lmargin&#39;:<br>
argp-help.c:(.text+0x1eb0): multiple definition of `argp_fmtstream_set_lmar=
gin&#39;<br>
argp-fmtstream.o:argp-fmtstream.c:(.text+0x5e0): first defined here<br>
argp-help.o: In function `argp_fmtstream_set_rmargin&#39;:<br>
argp-help.c:(.text+0x1ee0): multiple definition of `argp_fmtstream_set_rmar=
gin&#39;<br>
argp-fmtstream.o:argp-fmtstream.c:(.text+0x610): first defined here<br>
argp-help.o: In function `argp_fmtstream_set_wmargin&#39;:<br>
argp-help.c:(.text+0x1f10): multiple definition of `argp_fmtstream_set_wmar=
gin&#39;<br>
argp-fmtstream.o:argp-fmtstream.c:(.text+0x640): first defined here<br>
argp-help.o: In function `argp_fmtstream_point&#39;:<br>
argp-help.c:(.text+0x1f40): multiple definition of `argp_fmtstream_point&#3=
9;<br>
argp-fmtstream.o:argp-fmtstream.c:(.text+0x670): first defined here<br>
collect2: error: ld returned 1 exit status<br>
Makefile:59: recipe for target &#39;localedef&#39; failed<br>
make: *** [localedef] Error 1<br>
ERROR: oe_runmake failed<br>
WARNING: /home/rpjday/oe/builds/vtss/minimal/tmp/work/x86_64-linux/cross-lo=
caledef-native/2.20-r0/temp/run.do_compile.27985:1 exit 1 from<br>
=C2=A0 exit 1<br>
ERROR: Function failed: do_compile (log file is located at /home/rpjday/oe/=
builds/vtss/minimal/tmp/work/x86_64-linux/cross-localedef-native/2.20-r0/te=
mp/log.do_compile.27985)<br>
<br>
=C2=A0 is this a known issue?<br>
<br>
rday<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ottawa, Ontario,=
 CANADA<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 <a href=3D"http://crashcourse.ca" rel=3D"noreferrer" target=3D"_=
blank">http://crashcourse.ca</a><br>
<br>
Twitter:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a=
 href=3D"http://twitter.com/rpjday" rel=3D"noreferrer" target=3D"_blank">ht=
tp://twitter.com/rpjday</a><br>
LinkedIn:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://ca.linkedin.=
com/in/rpjday" rel=3D"noreferrer" target=3D"_blank">http://ca.linkedin.com/=
in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;Do or do not=
. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br><=
/div></div>
</div>

--001a11c10986aafed6051a3b5d28--
