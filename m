Return-Path: <fabio@bertux.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42595E00B3A; Sun,  4 May 2014 20:12:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 47938 seconds by postgrey-1.32 at yocto-www;
	Sun, 04 May 2014 20:12:39 PDT
Received: from sender1.zohomail.com (sender1.zohomail.com [74.201.84.155])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5E01E00B21
	for <yocto@yoctoproject.org>; Sun,  4 May 2014 20:12:39 -0700 (PDT)
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1399259556907308.9477415161655;
	Sun, 4 May 2014 20:12:36 -0700 (PDT)
Date: Mon, 05 May 2014 00:12:36 -0300
From: Fabio Berton <fabio@bertux.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <145ca595d1b.-5475895297793030920.-4677149822827285423@bertux.com>
In-Reply-To: <CAMKF1sp7WC7Q7xwkY3k0Pkwcpv_3VYDmO=fKV+oRFJCBHZyyHw@mail.gmail.com>
References: <145c7800870.-1835694984789055059.-6439308093863957623@bertux.com>
	<CAMKF1sozckAboRv3sxuCbuYv1G5EYNk_O8wcbmSFMXphY6H8Ww@mail.gmail.com>
	<145c9eda0c3.-6257502610317357460.4904635757040864643@bertux.com>
	<CAMKF1sp7WC7Q7xwkY3k0Pkwcpv_3VYDmO=fKV+oRFJCBHZyyHw@mail.gmail.com>
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
X-List-Received-Date: Mon, 05 May 2014 03:12:51 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_121959_1537556724.1399259556856"

------=_Part_121959_1537556724.1399259556856
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Installing shiboken on my machine the fix the error, but I get this http://pastebin.com/J5GrFvdp.
On line 169 the system didn't recognize a .so file.


---- On Sun, 04 May 2014 23:26:49 -0300 Khem Raj&lt;raj.khem@gmail.com&gt; wrote ---- 


On Sun, May 4, 2014 at 6:09 PM, Fabio Berton &lt;fabio@bertux.com&gt; wrote: 
&gt; I get this error http://pastebin.com/S5hyDvBd 
 
/bin/sh: 1: shiboken: not found 
 
so as you are cross compiling here this package seems to be needed on 
build host. This seems to be provided by shiboken/pyside 
so you need to add a native package may be just adding 
 
BBCLASSEXTEND += "native" and adding DEPENDS += "pyside-native" to 
pysize recipe is enough but there might be more needed 
 
 
&gt; 
&gt; ---- On Sun, 04 May 2014 22:04:10 -0300 Khem Raj &lt;raj.khem@gmail.com&gt; wrote 
&gt; ---- 
&gt; 
&gt; On Sun, May 4, 2014 at 6:53 AM, Fabio Berton &lt;fabio@bertux.com&gt; wrote: 
&gt;&gt; I need to run PySide and I can't compile any version of PySide. I'm using 
&gt;&gt; this meta-pyside https://github.com/svolpe/meta-pyside. Does anyone knows 
&gt;&gt; how I get PySide work on Yocto? 
&gt; 
&gt; whats the error ? 
&gt; 
&gt; 



------=_Part_121959_1537556724.1399259556856
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head>=
<meta content=3D"text/html;charset=3DUTF-8" http-equiv=3D"Content-Type"></h=
ead><body ><div style=3D'font-size:10pt;font-family:Verdana,Arial,Helvetica=
,sans-serif;'>Installing shiboken on my machine the fix the error, but I ge=
t this http://pastebin.com/J5GrFvdp.<br>On line 169 the system didn't recog=
nize a .so file.<br><br><div id=3D"1"><br>---- On Sun, 04 May 2014 23:26:49=
 -0300 <b>Khem Raj&lt;raj.khem@gmail.com&gt;</b> wrote ---- <br></div><br><=
blockquote style=3D"border-left: 1px solid #0000FF; padding-left: 6px; marg=
in:0 0 0 5px">On Sun, May 4, 2014 at 6:09 PM, Fabio Berton &lt;<a subj=3D""=
 mailid=3D"fabio%40bertux.com" href=3D"mailto:fabio@bertux.com" target=3D"_=
blank">fabio@bertux.com</a>&gt; wrote: <br>&gt; I get this error <a href=3D=
"http://pastebin.com/S5hyDvBd" target=3D"_blank">http://pastebin.com/S5hyDv=
Bd</a> <br> <br>/bin/sh: 1: shiboken: not found <br> <br>so as you are cros=
s compiling here this package seems to be needed on <br>build host. This se=
ems to be provided by shiboken/pyside <br>so you need to add a native packa=
ge may be just adding <br> <br>BBCLASSEXTEND +=3D "native" and adding DEPEN=
DS +=3D "pyside-native"  to <br>pysize recipe is enough but there might be =
more needed <br> <br> <br>&gt; <br>&gt; ---- On Sun, 04 May 2014 22:04:10 -=
0300 Khem Raj &lt;<a subj=3D"" mailid=3D"raj.khem%40gmail.com" href=3D"mail=
to:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote <=
br>&gt; ---- <br>&gt; <br>&gt; On Sun, May 4, 2014 at 6:53 AM, Fabio Berton=
 &lt;<a subj=3D"" mailid=3D"fabio%40bertux.com" href=3D"mailto:fabio@bertux=
.com" target=3D"_blank">fabio@bertux.com</a>&gt; wrote: <br>&gt;&gt; I need=
 to run PySide and I can't compile any version of PySide. I'm using <br>&gt=
;&gt; this meta-pyside <a href=3D"https://github.com/svolpe/meta-pyside" ta=
rget=3D"_blank">https://github.com/svolpe/meta-pyside</a>. Does anyone know=
s <br>&gt;&gt; how I get PySide work on Yocto? <br>&gt; <br>&gt; whats the =
error ? <br>&gt; <br>&gt; <br></blockquote><br></div></body></html>

------=_Part_121959_1537556724.1399259556856--
