Return-Path: <fabio@bertux.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DDA7E00B3A; Sun,  4 May 2014 20:35:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from sender1.zohomail.com (sender1.zohomail.com [74.201.84.155])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB389E00B21
	for <yocto@yoctoproject.org>; Sun,  4 May 2014 20:35:28 -0700 (PDT)
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1399260926372946.9655091328887;
	Sun, 4 May 2014 20:35:26 -0700 (PDT)
Date: Mon, 05 May 2014 00:35:26 -0300
From: Fabio Berton <fabio@bertux.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <145ca73098b.5534308473124236891.9167672736563181401@bertux.com>
In-Reply-To: <CAMKF1sqN182n5GNr+n6ypeu42EOmmeqEZDpvU0PM1stiJ0ap-w@mail.gmail.com>
References: <145c7800870.-1835694984789055059.-6439308093863957623@bertux.com>
	<CAMKF1sozckAboRv3sxuCbuYv1G5EYNk_O8wcbmSFMXphY6H8Ww@mail.gmail.com>
	<145c9eda0c3.-6257502610317357460.4904635757040864643@bertux.com>
	<CAMKF1sp7WC7Q7xwkY3k0Pkwcpv_3VYDmO=fKV+oRFJCBHZyyHw@mail.gmail.com>
	<145ca595d1b.-5475895297793030920.-4677149822827285423@bertux.com>
	<CAMKF1sqN182n5GNr+n6ypeu42EOmmeqEZDpvU0PM1stiJ0ap-w@mail.gmail.com>
MIME-Version: 1.0
X-Priority: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: PySide
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
X-List-Received-Date: Mon, 05 May 2014 03:35:35 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_123704_1305240784.1399260926321"

------=_Part_123704_1305240784.1399260926321
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

My image is a qt4e, so I inherit qt4e and other error appears, http://pastebin.com/aes6EakH

---- On Mon, 05 May 2014 00:19:24 -0300 Khem Raj&lt;raj.khem@gmail.com&gt; wrote ---- 


On Sun, May 4, 2014 at 8:12 PM, Fabio Berton &lt;fabio@bertux.com&gt; wrote: 
&gt; Installing shiboken on my machine the fix the error, 
 
I know it will but this is a wrong fix. You should really create 
native recipe or at least report it as a bug to the relevant layer. 
 
 but I get this 
&gt; http://pastebin.com/J5GrFvdp. 
&gt; On line 169 the system didn't recognize a .so file. 
 
/mnt/workspace/yocto/tmp/sysroots/x86_64-linux/usr/lib/libQtTest.so: 
file not recognized: File format not recognized 
 
this is trying to link native/x86 library into your cross build you 
need to check if you are missing some dependencies. 
may be you should inherit one of qt4e or qt4x11 whichever is 
applicable to your image type. 



------=_Part_123704_1305240784.1399260926321
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head>=
<meta content=3D"text/html;charset=3DUTF-8" http-equiv=3D"Content-Type"></h=
ead><body ><div style=3D'font-size:10pt;font-family:Verdana,Arial,Helvetica=
,sans-serif;'>My image is a qt4e, so I inherit qt4e and other error appears=
, http://pastebin.com/aes6EakH<br><div id=3D"1"><br>---- On Mon, 05 May 201=
4 00:19:24 -0300 <b>Khem Raj&lt;raj.khem@gmail.com&gt;</b> wrote ---- <br><=
/div><br><blockquote style=3D"border-left: 1px solid #0000FF; padding-left:=
 6px; margin:0 0 0 5px">On Sun, May 4, 2014 at 8:12 PM, Fabio Berton &lt;<a=
 subj=3D"" mailid=3D"fabio%40bertux.com" href=3D"mailto:fabio@bertux.com" t=
arget=3D"_blank">fabio@bertux.com</a>&gt; wrote: <br>&gt; Installing shibok=
en on my machine the fix the error, <br> <br>I know it will but this is a w=
rong fix. You should really create <br>native recipe or at least report it =
as a bug to the relevant layer. <br> <br> but I get this <br>&gt; <a href=
=3D"http://pastebin.com/J5GrFvdp" target=3D"_blank">http://pastebin.com/J5G=
rFvdp</a>. <br>&gt; On line 169 the system didn't recognize a .so file. <br=
> <br>/mnt/workspace/yocto/tmp/sysroots/x86_64-linux/usr/lib/libQtTest.so: =
<br>file not recognized: File format not recognized <br> <br>this is trying=
 to link native/x86 library into your cross build you <br>need to check if =
you are missing some dependencies. <br>may be you should inherit one of qt4=
e or  qt4x11 whichever is <br>applicable to your image type. <br></blockquo=
te><br></div></body></html>

------=_Part_123704_1305240784.1399260926321--
