Return-Path: <sarayu@m5nv.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F706E00AB3; Sat, 18 Aug 2018 02:06:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A9BCE00848
	for <yocto@yoctoproject.org>; Sat, 18 Aug 2018 02:06:04 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id 13-v6so18038296ois.1
	for <yocto@yoctoproject.org>; Sat, 18 Aug 2018 02:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=m5nv-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=8HJmlceBWO+egfxvbtQUGddoxoqEIwjcEk1XrtVAnkc=;
	b=s2p6cpnO97AtezZmL6vmH8+3Jbzke4pKD5FAHK/6klaY561+s4bNjDpZkMmvCz/4Rv
	EmqJl7LMlAQoExtJfdrtItABtIfMnJHRWlD0MgjEi7ufMiya/wA+eKunVI7p0hJago0N
	n3HRbha0Zxd88f24dJ8naHXA1oyYbOF34n+jhMDfdTbZHtge41MkjzSoz2+QxfSLn8C1
	ePySbXCn+rzig8kXM4YQCv3oSZngoCYL0UUZlbKs9AN/EqyKjtm0Vuft6tmYUBJ2ii6x
	scTtYmjeZtYcgguP02CUArW+UUoKCHJ10ZI1JnTBaDRK7wJN0ho3/jNhnMArZZG97DfX
	TuGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=8HJmlceBWO+egfxvbtQUGddoxoqEIwjcEk1XrtVAnkc=;
	b=ZDg2XaQH6yVptvD3p40M5HnbSVuA/eCxFcvV/l5ST+40iOuZssm6keWGznIUaDAAWT
	OZI++tr2/MsD3SM8wn2OGGxD1FdylMC1AFneogC4z+Kj42v7WVrotPZtFxc7U5QVczQd
	Zcdr4Ie9YQKOhUADMAO9Ns6JeMG07tKNlJUrFk7XGzCWPt9q3iBTlJLwtEJHc4W41ikl
	qKfY5fhAAj4Eltj2wwibDuj9bPItKhdSp/swJSKMvIFubKvvNmTlyqGyTnhRg/WjJ/Dl
	1MmcA7nAOhTPoN9Ovh1gEFQSFIBP38LCE50HHfO8/mjbFfH1vPPr/1zlNST0SJBqtc0M
	3wzQ==
X-Gm-Message-State: AOUpUlFWbAqyijq1pH2gtXjwtUa80wH7sP1zEGsMjfGQ/I2YPF2uX7X1
	pYYVb/i9xFhWuWfyqzazgPaKGP9jtRX7WFZgPPKg5/3SOrI=
X-Google-Smtp-Source: AA+uWPynlzvaJbAzibIZy0jeue1MUiIBZ876WaBdLB1K693TrEXa5lA/lEbnpIJZHe36ieVbF8waU5k+vbEGFMAKX+U=
X-Received: by 2002:aca:fc94:: with SMTP id
	a142-v6mr5475582oii.29.1534583164155; 
	Sat, 18 Aug 2018 02:06:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:3da6:0:0:0:0:0 with HTTP; Sat, 18 Aug 2018 02:06:03
	-0700 (PDT)
From: Sarayu Sivanandam <sarayu@m5nv.com>
Date: Sat, 18 Aug 2018 14:36:03 +0530
Message-ID: <CAG3Cyz9axHJ2aho6uOjL9pv1GqVupONedtdAu-aFPrjSv565xA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 20 Aug 2018 01:02:59 -0700
Subject: Issue with Doc-utils
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
X-List-Received-Date: Sat, 18 Aug 2018 09:06:07 -0000
Content-Type: multipart/alternative; boundary="00000000000060ce0b0573b1fc88"

--00000000000060ce0b0573b1fc88
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi ,

I am trying to compile docbook utils with the below recipe
recipes-devtools/docbook-utils/docbook-utils-native_0.6.14.bb
<http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-devtools/=
docbook-utils/docbook-utils-native_0.6.14.bb?h=3Ddanny>
on my latest ubuntu setup ( 18.04)  and i am seeing the below errors. Can
you please help me with the same.

Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 4
| Making all in backends
| make[1]: Entering directory
'/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb=
/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/backends'
| make[1]: Nothing to be done for 'all'.
| make[1]: Leaving directory
'/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb=
/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/backends'
| Making all in bin
| make[1]: Entering directory
'/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb=
/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/bin'
| make[1]: Nothing to be done for 'all'.
| make[1]: Leaving directory
'/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb=
/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/bin'
| Making all in doc
| make[1]: Entering directory
'/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb=
/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/doc'
| Making all in refentry
| make[2]: Entering directory
'/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb=
/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/doc/refentry'
| make[2]: Nothing to be done for 'all'.
| make[2]: Leaving directory
'/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb=
/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/doc/refentry'
| Making all in man
| make[2]: Entering directory
'/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb=
/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/doc/man'
| make[2]: Nothing to be done for 'all'.
| make[2]: Leaving directory
'/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb=
/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/doc/man'
| Making all in HTML
| make[2]: Entering directory
'/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb=
/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/doc/HTML'
|
SGML_CATALOG_FILES=3D/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yo=
cto/build_ls1043ardb/tmp/sysroots/x86_64-linux/etc/sgml/catalog
\
|
SGML_SEARCH_PATH=3D/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yoct=
o/build_ls1043ardb/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/doc=
book-utils-0.6.14:/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto=
/build_ls1043ardb/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/docb=
ook-utils-0.6.14/doc:..
\
|     jade -t sgml -i html -d
/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb/=
tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/docbook-utils-0.6.14/d=
ocbook-utils.dsl\#html
\
|         -V '%use-id-as-filename%'
/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb/=
tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/docbook-utils-0.6.14/d=
oc/docbook-utils.sgml
|
SGML_CATALOG_FILES=3D/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yo=
cto/build_ls1043ardb/tmp/sysroots/x86_64-linux/etc/sgml/catalog
\
|
SGML_SEARCH_PATH=3D/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yoct=
o/build_ls1043ardb/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/doc=
book-utils-0.6.14:/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto=
/build_ls1043ardb/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/docb=
ook-utils-0.6.14/doc:..
\
|     jade -t sgml -i html -d
/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb/=
tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/docbook-utils-0.6.14/d=
ocbook-utils.dsl\#html
\
|         -V '%use-id-as-filename%'
/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb/=
tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/docbook-utils-0.6.14/d=
oc/docbook-utils.sgml
|
SGML_CATALOG_FILES=3D/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yo=
cto/build_ls1043ardb/tmp/sysroots/x86_64-linux/etc/sgml/catalog
\
|
SGML_SEARCH_PATH=3D/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yoct=
o/build_ls1043ardb/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/doc=
book-utils-0.6.14:/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto=
/build_ls1043ardb/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/docb=
ook-utils-0.6.14/doc:..
\
|     jade -t sgml -i html -d
/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb/=
tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/docbook-utils-0.6.14/d=
ocbook-utils.dsl\#html
\
|         -V '%use-id-as-filename%'
/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb/=
tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/docbook-utils-0.6.14/d=
oc/docbook-utils.sgml
|
SGML_CATALOG_FILES=3D/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yo=
cto/build_ls1043ardb/tmp/sysroots/x86_64-linux/etc/sgml/catalog
\
|
SGML_SEARCH_PATH=3D/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yoct=
o/build_ls1043ardb/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/doc=
book-utils-0.6.14:/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto=
/build_ls1043ardb/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/docb=
ook-utils-0.6.14/doc:..
\
|     jade -t sgml -i html -d
/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb/=
tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/docbook-utils-0.6.14/d=
ocbook-utils.dsl\#html
\
|         -V '%use-id-as-filename%'
/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb/=
tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/docbook-utils-0.6.14/d=
oc/docbook-utils.sgml
| Makefile:458: recipe for target 'docbook2man.html' failed
| make[2]: *** [docbook2man.html] Segmentation fault (core dumped)
| make[2]: *** Waiting for unfinished jobs....
| Makefile:458: recipe for target 'api.html' failed
| make[2]: *** [api.html] Segmentation fault (core dumped)
| Makefile:458: recipe for target 'docbook2texi.html' failed
| make[2]: *** [docbook2texi.html] Segmentation fault (core dumped)
| Makefile:458: recipe for target 'backend-spec.html' failed
| make[2]: *** [backend-spec.html] Segmentation fault (core dumped)
| make[2]: Leaving directory
'/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb=
/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/doc/HTML'
| Makefile:298: recipe for target 'all-recursive' failed
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
'/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb=
/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/doc'
| Makefile:379: recipe for target 'all-recursive' failed
| make: *** [all-recursive] Error 1
| WARNING: exit code 1 from a shell command.
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (log file is located at
/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb/=
tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/temp/log.do_compile.20=
775)
ERROR: Task 6
(/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/sources/poky/met=
a/recipes-devtools/docbook-utils/
docbook-utils-native_0.6.14.bb, do_compile) failed with exit code '1'

--00000000000060ce0b0573b1fc88
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi , <br></div><div><br></div><div>I am trying to com=
pile docbook utils with the below recipe <a href=3D"http://cgit.openembedde=
d.org/openembedded-core/tree/meta/recipes-devtools/docbook-utils/docbook-ut=
ils-native_0.6.14.bb?h=3Ddanny">recipes-devtools/docbook-utils/docbook-util=
s-native_0.6.14.bb</a>=C2=A0 on my latest ubuntu setup ( 18.04)=C2=A0 and i=
 am seeing the below errors. Can you please help me with the same.</div><di=
v><br></div><div>Log data follows:<br>| DEBUG: Executing shell function do_=
compile<br>| NOTE: make -j 4<br>| Making all in backends<br>| make[1]: Ente=
ring directory &#39;/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yoc=
to/build_ls1043ardb/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/bu=
ild/backends&#39;<br>| make[1]: Nothing to be done for &#39;all&#39;.<br>| =
make[1]: Leaving directory &#39;/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-=
20160527-yocto/build_ls1043ardb/tmp/work/x86_64-linux/docbook-utils-native/=
0.6.14-r3/build/backends&#39;<br>| Making all in bin<br>| make[1]: Entering=
 directory &#39;/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/b=
uild_ls1043ardb/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/=
bin&#39;<br>| make[1]: Nothing to be done for &#39;all&#39;.<br>| make[1]: =
Leaving directory &#39;/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-=
yocto/build_ls1043ardb/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3=
/build/bin&#39;<br>| Making all in doc<br>| make[1]: Entering directory &#3=
9;/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ard=
b/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/doc&#39;<br>| =
Making all in refentry<br>| make[2]: Entering directory &#39;/home/sarayu/c=
ode/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb/tmp/work/x86_6=
4-linux/docbook-utils-native/0.6.14-r3/build/doc/refentry&#39;<br>| make[2]=
: Nothing to be done for &#39;all&#39;.<br>| make[2]: Leaving directory &#3=
9;/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ard=
b/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/doc/refentry&#=
39;<br>| Making all in man<br>| make[2]: Entering directory &#39;/home/sara=
yu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb/tmp/work/x=
86_64-linux/docbook-utils-native/0.6.14-r3/build/doc/man&#39;<br>| make[2]:=
 Nothing to be done for &#39;all&#39;.<br>| make[2]: Leaving directory &#39=
;/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb=
/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/doc/man&#39;<br=
>| Making all in HTML<br>| make[2]: Entering directory &#39;/home/sarayu/co=
de/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb/tmp/work/x86_64=
-linux/docbook-utils-native/0.6.14-r3/build/doc/HTML&#39;<br>| SGML_CATALOG=
_FILES=3D/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls=
1043ardb/tmp/sysroots/x86_64-linux/etc/sgml/catalog \<br>| SGML_SEARCH_PATH=
=3D/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ar=
db/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/docbook-utils-0.6.1=
4:/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ard=
b/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/docbook-utils-0.6.14=
/doc:.. \<br>| =C2=A0=C2=A0=C2=A0 jade -t sgml -i html -d /home/sarayu/code=
/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb/tmp/work/x86_64-l=
inux/docbook-utils-native/0.6.14-r3/docbook-utils-0.6.14/docbook-utils.dsl\=
#html \<br>| =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 -V &#39;%use-id-as-filen=
ame%&#39; /home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_l=
s1043ardb/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/docbook-util=
s-0.6.14/doc/docbook-utils.sgml<br>| SGML_CATALOG_FILES=3D/home/sarayu/code=
/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb/tmp/sysroots/x86_=
64-linux/etc/sgml/catalog \<br>| SGML_SEARCH_PATH=3D/home/sarayu/code/yocto=
_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb/tmp/work/x86_64-linux/d=
ocbook-utils-native/0.6.14-r3/docbook-utils-0.6.14:/home/sarayu/code/yocto_=
arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb/tmp/work/x86_64-linux/do=
cbook-utils-native/0.6.14-r3/docbook-utils-0.6.14/doc:.. \<br>| =C2=A0=C2=
=A0=C2=A0 jade -t sgml -i html -d /home/sarayu/code/yocto_arm/QorIQ-SDK-V2.=
0-20160527-yocto/build_ls1043ardb/tmp/work/x86_64-linux/docbook-utils-nativ=
e/0.6.14-r3/docbook-utils-0.6.14/docbook-utils.dsl\#html \<br>| =C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 -V &#39;%use-id-as-filename%&#39; /home/sarayu=
/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb/tmp/work/x86=
_64-linux/docbook-utils-native/0.6.14-r3/docbook-utils-0.6.14/doc/docbook-u=
tils.sgml<br>| SGML_CATALOG_FILES=3D/home/sarayu/code/yocto_arm/QorIQ-SDK-V=
2.0-20160527-yocto/build_ls1043ardb/tmp/sysroots/x86_64-linux/etc/sgml/cata=
log \<br>| SGML_SEARCH_PATH=3D/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20=
160527-yocto/build_ls1043ardb/tmp/work/x86_64-linux/docbook-utils-native/0.=
6.14-r3/docbook-utils-0.6.14:/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-201=
60527-yocto/build_ls1043ardb/tmp/work/x86_64-linux/docbook-utils-native/0.6=
.14-r3/docbook-utils-0.6.14/doc:.. \<br>| =C2=A0=C2=A0=C2=A0 jade -t sgml -=
i html -d /home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_l=
s1043ardb/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/docbook-util=
s-0.6.14/docbook-utils.dsl\#html \<br>| =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 -V &#39;%use-id-as-filename%&#39; /home/sarayu/code/yocto_arm/QorIQ-SDK=
-V2.0-20160527-yocto/build_ls1043ardb/tmp/work/x86_64-linux/docbook-utils-n=
ative/0.6.14-r3/docbook-utils-0.6.14/doc/docbook-utils.sgml<br>| SGML_CATAL=
OG_FILES=3D/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_=
ls1043ardb/tmp/sysroots/x86_64-linux/etc/sgml/catalog \<br>| SGML_SEARCH_PA=
TH=3D/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043=
ardb/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/docbook-utils-0.6=
.14:/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043a=
rdb/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/docbook-utils-0.6.=
14/doc:.. \<br>| =C2=A0=C2=A0=C2=A0 jade -t sgml -i html -d /home/sarayu/co=
de/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb/tmp/work/x86_64=
-linux/docbook-utils-native/0.6.14-r3/docbook-utils-0.6.14/docbook-utils.ds=
l\#html \<br>| =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 -V &#39;%use-id-as-fil=
ename%&#39; /home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build=
_ls1043ardb/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/docbook-ut=
ils-0.6.14/doc/docbook-utils.sgml<br>| Makefile:458: recipe for target &#39=
;docbook2man.html&#39; failed<br>| make[2]: *** [docbook2man.html] Segmenta=
tion fault (core dumped)<br>| make[2]: *** Waiting for unfinished jobs....<=
br>| Makefile:458: recipe for target &#39;api.html&#39; failed<br>| make[2]=
: *** [api.html] Segmentation fault (core dumped)<br>| Makefile:458: recipe=
 for target &#39;docbook2texi.html&#39; failed<br>| make[2]: *** [docbook2t=
exi.html] Segmentation fault (core dumped)<br>| Makefile:458: recipe for ta=
rget &#39;backend-spec.html&#39; failed<br>| make[2]: *** [backend-spec.htm=
l] Segmentation fault (core dumped)<br>| make[2]: Leaving directory &#39;/h=
ome/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb/tm=
p/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/doc/HTML&#39;<br>|=
 Makefile:298: recipe for target &#39;all-recursive&#39; failed<br>| make[1=
]: *** [all-recursive] Error 1<br>| make[1]: Leaving directory &#39;/home/s=
arayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_ls1043ardb/tmp/wor=
k/x86_64-linux/docbook-utils-native/0.6.14-r3/build/doc&#39;<br>| Makefile:=
379: recipe for target &#39;all-recursive&#39; failed<br>| make: *** [all-r=
ecursive] Error 1<br>| WARNING: exit code 1 from a shell command.<br>| ERRO=
R: oe_runmake failed<br>| ERROR: Function failed: do_compile (log file is l=
ocated at /home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0-20160527-yocto/build_l=
s1043ardb/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/temp/log.do_=
compile.20775)<br>ERROR: Task 6 (/home/sarayu/code/yocto_arm/QorIQ-SDK-V2.0=
-20160527-yocto/sources/poky/meta/recipes-devtools/docbook-utils/<a href=3D=
"http://docbook-utils-native_0.6.14.bb">docbook-utils-native_0.6.14.bb</a>,=
 do_compile) failed with exit code &#39;1&#39;<br><br></div></div>

--00000000000060ce0b0573b1fc88--
