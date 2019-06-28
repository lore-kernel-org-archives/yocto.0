Return-Path: <daniel.wenninger92@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73AC6E00BE9; Fri, 28 Jun 2019 06:41:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (daniel.wenninger92[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
	[209.85.210.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCE86E00B3F
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 06:41:45 -0700 (PDT)
Received: by mail-ot1-f54.google.com with SMTP id l15so5974165otn.9
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 06:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=bJIZCZFaPs3x3A5ZUmzvIn8az3tMZMfcNcibuaf3+1s=;
	b=Q18mNoSKVycM5mLrzh0MARAbH0KYDt587AXMp5a4qPpJXJqjTamm6Am0OW01NbNSUP
	++kZtOlqdFMaMxh3LPxf2vfzZwv/ZdRmevgF8ZsQq9t+ehydekg6nd1pTbrxLVt2yGGQ
	xRSRih6vSjLEm4Womd2AgjduzuzaGQ/wbDK4E9iW4X0D5DKbpSNgl+T5nmktDXHKaXRl
	ZdbLVf/TfTkl6EFFmY4Nn1vARQlE9QirHTlv6IpePdQJR9CxaF1zBqixvFa3k4yAX2wc
	b1qzmjuODiqTrXTSog0H79OOFKcCs6kEpU2DgRVTgAmSoiqu6zZnQHruIXGXn4roKklO
	plcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=bJIZCZFaPs3x3A5ZUmzvIn8az3tMZMfcNcibuaf3+1s=;
	b=ZiEGhJIre4BBR2gndPWfXxGlvrNbXKv8VXo83+CWcYLGsqduIb3/hBhg/K7JvUYTnA
	csaD4FzKc9PlQeKetmA2k0envLBqZa0nP3qpQ7QmtTOGpbvK3HI0zwrIyUGvYByCOQpe
	rsqEEZX272Yuhog8l4rFYwP1oCNwO29wpLKNhlU+uPMvjssJ5fyVe9n4vb3gStr1HBSK
	vEftbW/6NqvLiaMadzW4xo5R4ClXo2RLW4hpAWq8yMT2C0hyGXUROZxRxb3HnaRZOeNE
	wPa8XTq+fRlJiIYlNOQFhPR5O+DNc5C5gs85SFusnWB9OkGRv0X6+2MZRqqg0Sgo2att
	1Mmw==
X-Gm-Message-State: APjAAAXNojSnoKbMVdN+M4vXYpUc5Jo+Lx8bdF7k3P/RinQqRKoToBeW
	OG+Fb5/VmJpfBIGaAiy18WCEjEkjVRZow2rTk7hbiGfB
X-Google-Smtp-Source: APXvYqygA2X4VTNZcJpMXOGbxiFTK87qEVHdk/on/BVHFMAB/VyX2pXRw9CykCS7HyawUkq5aLMCD8/b8QGzK0qiYxw=
X-Received: by 2002:a9d:7203:: with SMTP id u3mr7881144otj.313.1561729305049; 
	Fri, 28 Jun 2019 06:41:45 -0700 (PDT)
MIME-Version: 1.0
From: danwe <daniel.wenninger92@gmail.com>
Date: Fri, 28 Jun 2019 15:41:35 +0200
Message-ID: <CAEmXcAzx7i7ZKdgsfxJ4ChZ_jWAcTFZCHBp2Hp2MCaQVFdHrCw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Copying the binaries to an SD card after bulding with Yocto
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
X-List-Received-Date: Fri, 28 Jun 2019 13:41:46 -0000
Content-Type: multipart/alternative; boundary="000000000000767cf4058c627058"

--000000000000767cf4058c627058
Content-Type: text/plain; charset="UTF-8"

Hi,

I have successfully build BeagleBone systems with Yocto.
I have used this site:
https://jumpnowtek.com/beaglebone/BeagleBone-Systems-with-Yocto.html

Now I need to copy the binaries to an SD card and have a question to the
following:
In the instruction I can read the following:
``````````````````````````
This *copy_boot.sh* script needs to know the TMPDIR to find the binaries.
It looks for an environment variable called OETMP.

For instance, if I had this in the local.conf

TMPDIR = "/oe7/bbb/tmp-warrior"

Then I would export this environment variable before running copy_boot.sh

~/bbb/meta-bbb/scripts$ export OETMP=/oe7/bbb/tmp-warrior

Then run the copy_boot.sh script passing the location of SD card
~/bbb/meta-bbb/scripts$ ./copy_boot.sh sdb
```````````````````````

I did that but it shows me the following error:
OETMP: /oe7/bbb/tmp-warrior
Directory not found: /oe7/bbb/tmp-warrior/deploy/images/beaglebone

So my question is if I need to uncomment TMPDIR = "/oe7/bbb/tmp-warrior" in
my local.conf when doing this or not? --> I tried both.

So my copy_boot.sh looks for an environment variable called OETMP. And
OETMP should know the TMPDIR (directory). But what should I export?

Thanks.

Daniel

--000000000000767cf4058c627058
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have successfully build BeagleBon=
e systems with Yocto.</div><div>I have used this site:</div><div><a href=3D=
"https://jumpnowtek.com/beaglebone/BeagleBone-Systems-with-Yocto.html">http=
s://jumpnowtek.com/beaglebone/BeagleBone-Systems-with-Yocto.html</a>=C2=A0<=
/div><div><br></div><div>Now I need to copy the binaries to an SD card and =
have a question to the following:</div><div>In the instruction I can read t=
he following:=C2=A0</div><div>``````````````````````````</div><div><span st=
yle=3D"color:rgb(0,0,0);font-family:Helvetica,Arial,sans-serif;font-size:14=
.3px;text-align:justify">This=C2=A0</span><em style=3D"margin:0px;padding:0=
px;color:rgb(0,0,0);font-family:Helvetica,Arial,sans-serif;font-size:14.3px=
;text-align:justify">copy_boot.sh</em><span style=3D"color:rgb(0,0,0);font-=
family:Helvetica,Arial,sans-serif;font-size:14.3px;text-align:justify">=C2=
=A0script needs to know the=C2=A0</span><code class=3D"gmail-highlighter-ro=
uge" style=3D"margin:0px;padding:0px 0.2em;border:1px solid rgb(224,224,224=
);background-color:rgb(244,244,244);color:rgb(0,0,0);text-align:justify">TM=
PDIR</code><span style=3D"color:rgb(0,0,0);font-family:Helvetica,Arial,sans=
-serif;font-size:14.3px;text-align:justify">=C2=A0to find the binaries. It =
looks for an environment variable called=C2=A0</span><code class=3D"gmail-h=
ighlighter-rouge" style=3D"margin:0px;padding:0px 0.2em;border:1px solid rg=
b(224,224,224);background-color:rgb(244,244,244);color:rgb(0,0,0);text-alig=
n:justify">OETMP</code><span style=3D"color:rgb(0,0,0);font-family:Helvetic=
a,Arial,sans-serif;font-size:14.3px;text-align:justify">.</span>=C2=A0</div=
><p style=3D"margin:1em 0px;padding:0px;color:rgb(0,0,0);font-family:Helvet=
ica,Arial,sans-serif;font-size:14.3px;text-align:justify">For instance, if =
I had this in the=C2=A0<code class=3D"gmail-highlighter-rouge" style=3D"mar=
gin:0px;padding:0px 0.2em;border:1px solid rgb(224,224,224);background-colo=
r:rgb(244,244,244)">local.conf</code></p><div class=3D"gmail-highlighter-ro=
uge" style=3D"margin:0px;padding:0px;color:rgb(0,0,0);font-family:Helvetica=
,Arial,sans-serif;font-size:14.3px;text-align:justify"><pre class=3D"gmail-=
highlight" style=3D"margin-top:0px;margin-bottom:0px;padding:0px 0.4em;back=
ground:rgb(244,244,244);border:1px solid rgb(224,224,224)"><code style=3D"m=
argin:0px;padding:0px 0.2em;border:none">TMPDIR =3D &quot;/oe7/bbb/tmp-warr=
ior&quot;
</code></pre></div><p style=3D"margin:1em 0px;padding:0px;color:rgb(0,0,0);=
font-family:Helvetica,Arial,sans-serif;font-size:14.3px;text-align:justify"=
>Then I would export this environment variable before running=C2=A0<code cl=
ass=3D"gmail-highlighter-rouge" style=3D"margin:0px;padding:0px 0.2em;borde=
r:1px solid rgb(224,224,224);background-color:rgb(244,244,244)">copy_boot.s=
h</code></p><div class=3D"gmail-highlighter-rouge" style=3D"margin:0px;padd=
ing:0px;color:rgb(0,0,0);font-family:Helvetica,Arial,sans-serif;font-size:1=
4.3px;text-align:justify"><pre class=3D"gmail-highlight" style=3D"margin-to=
p:0px;margin-bottom:0px;padding:0px 0.4em;background:rgb(244,244,244);borde=
r:1px solid rgb(224,224,224)"><code style=3D"margin:0px;padding:0px 0.2em;b=
order:none">~/bbb/meta-bbb/scripts$ export OETMP=3D/oe7/bbb/tmp-warrior
</code></pre></div><p style=3D"margin:1em 0px;padding:0px;color:rgb(0,0,0);=
font-family:Helvetica,Arial,sans-serif;font-size:14.3px;text-align:justify"=
>Then run the=C2=A0<code class=3D"gmail-highlighter-rouge" style=3D"margin:=
0px;padding:0px 0.2em;border:1px solid rgb(224,224,224);background-color:rg=
b(244,244,244)">copy_boot.sh</code>=C2=A0script passing the location of SD =
card</p><div><span style=3D"background-color:rgb(244,244,244);color:rgb(0,0=
,0);font-family:Helvetica,Arial,sans-serif;font-size:14.3px;text-align:just=
ify">~/bbb/meta-bbb/scripts$ ./copy_boot.sh sdb</span>=C2=A0<br></div><div>=
```````````````````````</div><div><br></div><div>I did that but it shows me=
 the following error:</div><div>OETMP: /oe7/bbb/tmp-warrior</div><div>Direc=
tory not found: /oe7/bbb/tmp-warrior/deploy/images/beaglebone</div><div><br=
></div><div>So my question is if I need to uncomment=C2=A0<span style=3D"ba=
ckground-color:rgb(244,244,244);color:rgb(0,0,0);font-size:14.3px;text-alig=
n:justify">TMPDIR =3D &quot;/oe7/bbb/tmp-warrior&quot; in my local.conf whe=
n doing this or not? --&gt; I tried both.</span></div><div><span style=3D"b=
ackground-color:rgb(244,244,244);color:rgb(0,0,0);font-size:14.3px;text-ali=
gn:justify"><br></span></div><div><span style=3D"background-color:rgb(244,2=
44,244);color:rgb(0,0,0);font-size:14.3px;text-align:justify">So my copy_bo=
ot.sh looks for an environment variable called OETMP. And OETMP should know=
 the TMPDIR (directory). But what should I export?</span></div><div><span s=
tyle=3D"background-color:rgb(244,244,244);color:rgb(0,0,0);font-size:14.3px=
;text-align:justify"><br></span></div><div><span style=3D"background-color:=
rgb(244,244,244);color:rgb(0,0,0);font-size:14.3px;text-align:justify">Than=
ks.</span></div><div><span style=3D"background-color:rgb(244,244,244);color=
:rgb(0,0,0);font-size:14.3px;text-align:justify"><br></span></div><div><spa=
n style=3D"background-color:rgb(244,244,244);color:rgb(0,0,0);font-size:14.=
3px;text-align:justify">Daniel</span></div><div><br></div></div>

--000000000000767cf4058c627058--
