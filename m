Return-Path: <daryl@daryllee.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75CCEE00DED; Sun, 11 Mar 2018 06:10:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [69.160.52.61 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from teebird.nexcess.net (teebird.nexcess.net [69.160.52.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D12BE0078F
	for <yocto@yoctoproject.org>; Sun, 11 Mar 2018 06:10:47 -0700 (PDT)
Received: (qmail 27513 invoked by uid 108); 11 Mar 2018 09:10:46 -0400
Received: from unknown (HELO ?192.168.0.19?) (67.42.66.4)
	by teebird.nexcess.net with ESMTPS; 11 Mar 2018 09:10:46 -0400
Mime-Version: 1.0 (1.0)
From: Personal <daryl@daryllee.com>
X-Mailer: iPhone Mail (15D100)
In-Reply-To: <20180311043222.GA21549@linux-uys3>
Date: Sun, 11 Mar 2018 07:10:45 -0600
Message-Id: <809F891C-F6BA-438A-AD41-C31423E81E55@daryllee.com>
References: <20180310191002.Horde.GwvmG_Lp-648oYCF_ByVQbw@www.daryllee.com>
	<20180311043222.GA21549@linux-uys3>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Documentation error report
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
X-List-Received-Date: Sun, 11 Mar 2018 13:10:49 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-2BDB1346-740F-43DF-A0EB-5C5D84F7BE7D
Content-Transfer-Encoding: 7bit

--Apple-Mail-2BDB1346-740F-43DF-A0EB-5C5D84F7BE7D
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks=E2=80=94I=E2=80=99ll do that.

--
Daryl Lee
> On Mar 10, 2018, at 9:32 PM, Trevor Woerner <twoerner@gmail.com> wrote:
>=20
> Hi Daryl,
>=20
>=20
>> On Sat 2018-03-10 @ 07:10:02 PM, daryl@daryllee.com wrote:
>> I'm not sure who to send this to, so maybe someone can redirect me...
>=20
> Scott Rifenbark is responsible for all YP documentation:
> srifenbark AT gmail DOT com
>=20
> Ideally, if you're comfortable with git, you could generate a patch and =
send
> it via email to this list (CCing Scott). You can find the YP sources her=
e:
>=20
>    http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs
>=20
>> I'm going through the Yocto Project Quick Start at https://www.yoctopro=
ject.org/docs/2.4.1/yocto-project-qs/yocto-project-qs.html,
>> and I encountered a minor error that might be worth fixing.  There are =
two
>> consecutive commands given for cloning Poky and checking out the curren=
t
>> version:
>>=20
>> $ git clone git://git.yoctoproject.org/poky
>> $ git checkout tags/yocto-2.4.1 -b poky_2.4.1
>>=20
>> For myself, I had to insert a
>>=20
>> $ cd poky
>>=20
>> between them to succeed.
>=20
> Specifically I think you're referring to:
>=20
>    http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/tree/documentati=
on/yocto-project-qs/qs.xml#n330
>=20
>=20
> I think the "-b <branch>" option (which also takes tags) could be used t=
o
> combine the above into one step, thus obviating the need for the "cd ...=
" or
> the "checkout ..."
>=20
>    $ git clone -b yocto-2.4.1 git://git.yoctoproject.org/poky
>=20
> But maybe it's simpler as multiple steps?
>=20
>> And, as always, my sincere thanks to everyone who has ever contributed =
to
>> this endeavor; it's a big help to me.  I've been using it for several m=
onths
>> now via Xilinx's Petalinux wrapper and now I'm trying to get "under the
>> covers" to understand better what kind of magic is going on.
>=20
> Welcome, and good luck!

--Apple-Mail-2BDB1346-740F-43DF-A0EB-5C5D84F7BE7D
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=
=
=3Dutf-8"></head><body dir=3D"auto">Thanks=E2=80=94I=E2=80=99ll do that.<b=
r><br><div id=3D"AppleMailSignature">--<div>Daryl Lee<div><div style=3D"tex=
t-align: left;"></div></div></div></div><div><br>On Mar 10, 2018, at 9:32 P=
M, Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.=
com</a>&gt; wrote:<br><br></div><blockquote type=3D"cite"><div><span>Hi Dar=
yl,</span><br><span></span><br><span></span><br><span>On Sat 2018-03-10 @ 0=
7:10:02 PM, <a href=3D"mailto:daryl@daryllee.com">daryl@daryllee.com</a> wr=
ote:</span><br><blockquote type=3D"cite"><span>I'm not sure who to send thi=
s to, so maybe someone can redirect me...</span><br></blockquote><span></sp=
an><br><span>Scott Rifenbark is responsible for all YP documentation:</span=
><br><span>srifenbark AT gmail DOT com</span><br><span></span><br><span>Ide=
ally, if you're comfortable with git, you could generate a patch and send</=
span><br><span>it via email to this list (CCing Scott). You can find the YP=
 sources here:</span><br><span></span><br><span> &nbsp; &nbsp;<a href=3D"ht=
tp://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs">http://git.yoctoproject=
.org/cgit/cgit.cgi/yocto-docs</a></span><br><span></span><br><blockquote ty=
pe=3D"cite"><span>I'm going through the Yocto Project Quick Start at <a hre=
f=3D"https://www.yoctoproject.org/docs/2.4.1/yocto-project-qs/yocto-project=
-qs.html">https://www.yoctoproject.org/docs/2.4.1/yocto-project-qs/yocto-pr=
oject-qs.html</a>,</span><br></blockquote><blockquote type=3D"cite"><span>a=
nd I encountered a minor error that might be worth fixing. &nbsp;There are =
two</span><br></blockquote><blockquote type=3D"cite"><span>consecutive comm=
ands given for cloning Poky and checking out the current</span><br></blockq=
uote><blockquote type=3D"cite"><span>version:</span><br></blockquote><block=
quote type=3D"cite"><span></span><br></blockquote><blockquote type=3D"cite"=
><span>$ git clone git://git.yoctoproject.org/poky</span><br></blockquote><=
blockquote type=3D"cite"><span>$ git checkout tags/yocto-2.4.1 -b poky_2.4.=
1</span><br></blockquote><blockquote type=3D"cite"><span></span><br></block=
quote><blockquote type=3D"cite"><span>For myself, I had to insert a</span><=
br></blockquote><blockquote type=3D"cite"><span></span><br></blockquote><bl=
ockquote type=3D"cite"><span>$ cd poky</span><br></blockquote><blockquote t=
ype=3D"cite"><span></span><br></blockquote><blockquote type=3D"cite"><span>=
between them to succeed.</span><br></blockquote><span></span><br><span>Spec=
ifically I think you're referring to:</span><br><span></span><br><span> &nb=
sp; &nbsp;<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/t=
ree/documentation/yocto-project-qs/qs.xml#n330">http://git.yoctoproject.org=
/cgit/cgit.cgi/yocto-docs/tree/documentation/yocto-project-qs/qs.xml#n330</=
a></span><br><span></span><br><span></span><br><span>I think the "-b &lt;br=
anch&gt;" option (which also takes tags) could be used to</span><br><span>c=
ombine the above into one step, thus obviating the need for the "cd ..." or=
</span><br><span>the "checkout ..."</span><br><span></span><br><span> &nbsp=
; &nbsp;$ git clone -b yocto-2.4.1 git://git.yoctoproject.org/poky</span><b=
r><span></span><br><span>But maybe it's simpler as multiple steps?</span><b=
r><span></span><br><blockquote type=3D"cite"><span>And, as always, my since=
re thanks to everyone who has ever contributed to</span><br></blockquote><b=
lockquote type=3D"cite"><span>this endeavor; it's a big help to me. &nbsp;I=
've been using it for several months</span><br></blockquote><blockquote typ=
e=3D"cite"><span>now via Xilinx's Petalinux wrapper and now I'm trying to g=
et "under the</span><br></blockquote><blockquote type=3D"cite"><span>covers=
" to understand better what kind of magic is going on.</span><br></blockquo=
te><span></span><br><span>Welcome, and good luck!</span><br></div></blockqu=
ote></body></html>

--Apple-Mail-2BDB1346-740F-43DF-A0EB-5C5D84F7BE7D--
