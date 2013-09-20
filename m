Return-Path: <ashish.dalela@gmail.com>
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FC0CE01445
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2013 07:07:32 -0700 (PDT)
Received: by mail-lb0-f178.google.com with SMTP id z5so601530lbh.9
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2013 07:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Tr41iMqmsGQV2jqaTFdJr9SqqIBFMTE8sowZRDr5KCY=;
	b=hyPmZFPyWD6ap7n+TxBWpScD2v9veS5EUTrK+h92pL9Npqtf//T4zdc+uV732w2wrP
	9hblD4rmsuo/ijrF+iq4GiEjKLnUOTJldTplcSVrXQxTjkyZNrs+e4GuXyxHw/RQsMgZ
	QSIYkzTRzjxx0xC6oGskrqLl0DiOFFC5t3OaT5N3GJ2NI1GpZTTvwF1M1UsYCOxlWx7r
	sEaxRBkjJqmZY3z3NN1CZ8CZSARn5R+x9v7q4u9GlMxi03zaz8mlmDGDTNRCuLHE4IEj
	7Gf7u5aPxCSV6nc6rKXO/7YFL5eY0JR8etLr+UhRpe41Th/FbuvVapG5I5lye8ISzurB
	199A==
MIME-Version: 1.0
X-Received: by 10.112.52.225 with SMTP id w1mr6409168lbo.31.1379686051382;
	Fri, 20 Sep 2013 07:07:31 -0700 (PDT)
Received: by 10.112.11.195 with HTTP; Fri, 20 Sep 2013 07:07:31 -0700 (PDT)
Date: Fri, 20 Sep 2013 19:37:31 +0530
Message-ID: <CABhkJRe2AAZFWiXGB53NN2EBVByvb3wUz_HJfbu0FeLzTdia4Q@mail.gmail.com>
From: Ashish Dalela <ashish.dalela@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: TCP Window Issue while doing SSH
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
X-List-Received-Date: Fri, 20 Sep 2013 14:07:34 -0000
Content-Type: multipart/alternative; boundary=001a11c3fe90fe899204e6d1300e

--001a11c3fe90fe899204e6d1300e
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I'm seeing a TCP window issue while doing a SSH. Below is TCPDUMP capture
of SSH from Yocto to an external Linux server. Yocto sends a SYN window of
14600 (10x of MSS) and external Linux server ACKs with Window of 5792 (4x
of MSS). Now, Yocto Linux drops the ACK.

When I do the SSH from external Linux server the same thing happens and
Yocto Linux never sends out a SYN ACK.

19:00:17.309270 IP 9.1.2.1.40144 > 9.1.1.5.ssh: S 1858484743:1858484743(0)
win 14600 <mss 1460,sackOK,timestamp 130112 0,nop,wscale 5>
19:00:17.309282 IP 9.1.1.5.ssh > 9.1.2.1.40144: S 606474867:606474867(0)
ack 1858484744 win 5792 <mss 1460,sackOK,timestamp 3722481670
115037,nop,wscale 7>

I'm using 9.0.1 but I have faced the same issue with 9.0.2 as well. I tried
turning off TCP window scaling with sysctl -w
"net.ipv4.tcp_window_scaling=0" but it does not help.

Any suggestions on how I can fix this problem? The SSH works fine when the
peer accepts the Window size proposed by Yocto Linux but fails when the
peer proposes an alternate Win size.

Thanks
-Ashish

--001a11c3fe90fe899204e6d1300e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div>Hi,</div><div><br></div><div>I&#39;m seeing a TCP=
 window issue while doing a SSH. Below is TCPDUMP capture of SSH from Yocto=
 to an external Linux server. Yocto sends a SYN window of 14600 (10x of MSS=
) and external Linux server ACKs with Window of 5792 (4x of MSS). Now, Yoct=
o Linux drops the ACK.</div>
<div><br></div><div>When I do the SSH from external Linux server the same t=
hing happens and Yocto Linux never sends out a SYN ACK.=A0</div><div><br></=
div><div><div>19:00:17.309270 IP 9.1.2.1.40144 &gt; 9.1.1.5.ssh: S 18584847=
43:1858484743(0) win 14600 &lt;mss 1460,sackOK,timestamp 130112 0,nop,wscal=
e 5&gt;</div>
<div>19:00:17.309282 IP 9.1.1.5.ssh &gt; 9.1.2.1.40144: S 606474867:6064748=
67(0) ack 1858484744 win 5792 &lt;mss 1460,sackOK,timestamp 3722481670 1150=
37,nop,wscale 7&gt;</div></div><div><br></div><div>I&#39;m using 9.0.1 but =
I have faced the same issue with 9.0.2 as well. I tried turning off TCP win=
dow scaling with=A0<tt style=3D"font-size:13px;font-family:monospace,Courie=
r;color:rgb(0,0,0);line-height:19.1875px">sysctl -w &quot;net.ipv4.tcp_wind=
ow_scaling=3D0&quot;</tt><span style=3D"font-size:13px;color:rgb(0,0,0);fon=
t-family:sans-serif;line-height:19.1875px">=A0but it does not help.</span><=
/div>
<div><span style=3D"font-size:13px;color:rgb(0,0,0);font-family:sans-serif;=
line-height:19.1875px"><br></span></div><div><span style=3D"font-size:13px;=
color:rgb(0,0,0);font-family:sans-serif;line-height:19.1875px">Any suggesti=
ons on how I can fix this problem? The SSH works fine when the peer accepts=
 the Window size proposed by Yocto Linux but fails when the peer proposes a=
n alternate Win size.</span></div>
<div><span style=3D"font-size:13px;color:rgb(0,0,0);font-family:sans-serif;=
line-height:19.1875px"><br></span></div><div><span style=3D"font-size:13px;=
color:rgb(0,0,0);font-family:sans-serif;line-height:19.1875px">Thanks</span=
></div>
<div><span style=3D"font-size:13px;color:rgb(0,0,0);font-family:sans-serif;=
line-height:19.1875px">-Ashish</span></div><div><span style=3D"font-size:13=
px;color:rgb(0,0,0);font-family:sans-serif;line-height:19.1875px"><br></spa=
n></div>
</div>

--001a11c3fe90fe899204e6d1300e--
