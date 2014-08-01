Return-Path: <pushpa@jtechindia.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EB32E006B7; Fri,  1 Aug 2014 04:31:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.111.96 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from BLU004-OMC2S21.hotmail.com (blu004-omc2s21.hotmail.com
	[65.55.111.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C02EE00572
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 04:31:43 -0700 (PDT)
Received: from BLU185-W71 ([65.55.111.73]) by BLU004-OMC2S21.hotmail.com with
	Microsoft SMTPSVC(7.5.7601.22712); Fri, 1 Aug 2014 04:31:42 -0700
X-TMN: [N729tRXk18eE1TgbZut4tlWZ/M6bQgD7]
X-Originating-Email: [pushpa@jtechindia.in]
Message-ID: <BLU185-W71D1DC662737378409460AC7E70@phx.gbl>
From: Pushpa Teja <pushpa@jtechindia.in>
To: YUKATHARSANI JEYACHANDRA <yukatharsanij@tataelxsi.co.in>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Date: Fri, 1 Aug 2014 11:31:42 +0000
Importance: Normal
In-Reply-To: <1406891577384.47768@tataelxsi.co.in>
References: <mailman.21236.1406788558.26702.yocto@yoctoproject.org>,
	<1624546.n1hBMRbNts@peggleto-mobl5.ger.corp.intel.com>,
	<BLU185-W93281D4A94CC98F82110C4C7E70@phx.gbl>,
	<13152220.2WktliDSTM@peggleto-mobl5.ger.corp.intel.com>,
	<1406891577384.47768@tataelxsi.co.in>
MIME-Version: 1.0
X-OriginalArrivalTime: 01 Aug 2014 11:31:42.0672 (UTC)
	FILETIME=[2B0AED00:01CFAD7C]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	sadasivam <sadasivam.b@jtechindia.com>
Subject: Re: yocto Digest, Vol 46, Issue 109
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
X-List-Received-Date: Fri, 01 Aug 2014 11:31:47 -0000
Content-Type: multipart/alternative;
	boundary="_20ad1565-9660-4435-984a-ab358ca67466_"

--_20ad1565-9660-4435-984a-ab358ca67466_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

HI=2C
            Thanks for your reply .Before it self i did the same thing .i h=
ave removed forward slash and tried but getting same error .in my configura=
tion file http is there .

Thanks& Regards=2C
pushpa=20


> From: yukatharsanij@tataelxsi.co.in
> To: paul.eggleton@linux.intel.com=3B pushpa@jtechindia.in
> CC: yocto@yoctoproject.org=3B sadasivam.b@jtechindia.com
> Subject: RE: [yocto] yocto Digest=2C Vol 46=2C Issue 109
> Date: Fri=2C 1 Aug 2014 11:14:36 +0000
>=20
> Hi Pushpa=2C
>         Please remove one forward slash after YOCTO in this below URL and=
 provide md5sum in your recipe and try to build .
>=20
>             http://www.freescale.com/lgfiles/NMG/MAD/YOCTO//libfslcodec-3=
.0.11.bin
>=20
> Note:- Check whether you have http or https mirror in your configuration =
file.
>=20
> Thanks and Regards=2C
> Yukatharsani J.
> ________________________________________
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on =
behalf of Paul Eggleton <paul.eggleton@linux.intel.com>
> Sent: Friday=2C August 1=2C 2014 4:22 PM
> To: Pushpa Teja
> Cc: yocto@yoctoproject.org=3B sadasivam
> Subject: Re: [yocto] yocto Digest=2C Vol 46=2C Issue 109
>=20
> On Friday 01 August 2014 10:30:18 Pushpa Teja wrote:
> > yes but this problem is not at all solving there is no problem in my
> > connection when ever i am trying this sites mirrors are not available p=
lz
> > give me a solution.
>=20
> I'm sorry but I don't think it's possible for me to just give you a solut=
ion
> to this. You're getting timeouts from the upstream servers (multiple
> independent ones)=2C and it appears you're getting the same problem fetch=
ing
> from our mirror server. That points to a problem at your end or somewhere
> between you and those servers. I can't really help fix that other than to
> suggest you try fetching the files externally=2C use traceroute to try to=
 figure
> out where the connection is getting dropped=2C talk to your ISP=2C etc.
>=20
> Cheers=2C
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
 		 	   		  =

--_20ad1565-9660-4435-984a-ab358ca67466_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>HI=2C<br>&nbsp=3B&nbsp=3B&nbsp=
=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B Thanks =
for your reply .Before it self i did the same thing .i have removed forward=
 slash and tried but getting same error .in my configuration file http is t=
here .<br><br>Thanks&amp=3B Regards=2C<br>pushpa <br><font style=3D"font-si=
ze: 8pt=3B" size=3D"1"><b></b></font><br><br><div>&gt=3B From: yukatharsani=
j@tataelxsi.co.in<br>&gt=3B To: paul.eggleton@linux.intel.com=3B pushpa@jte=
chindia.in<br>&gt=3B CC: yocto@yoctoproject.org=3B sadasivam.b@jtechindia.c=
om<br>&gt=3B Subject: RE: [yocto] yocto Digest=2C Vol 46=2C Issue 109<br>&g=
t=3B Date: Fri=2C 1 Aug 2014 11:14:36 +0000<br>&gt=3B <br>&gt=3B Hi Pushpa=
=2C<br>&gt=3B         Please remove one forward slash after YOCTO in this b=
elow URL and provide md5sum in your recipe and try to build .<br>&gt=3B <br=
>&gt=3B             http://www.freescale.com/lgfiles/NMG/MAD/YOCTO//libfslc=
odec-3.0.11.bin<br>&gt=3B <br>&gt=3B Note:- Check whether you have http or =
https mirror in your configuration file.<br>&gt=3B <br>&gt=3B Thanks and Re=
gards=2C<br>&gt=3B Yukatharsani J.<br>&gt=3B ______________________________=
__________<br>&gt=3B From: yocto-bounces@yoctoproject.org &lt=3Byocto-bounc=
es@yoctoproject.org&gt=3B on behalf of Paul Eggleton &lt=3Bpaul.eggleton@li=
nux.intel.com&gt=3B<br>&gt=3B Sent: Friday=2C August 1=2C 2014 4:22 PM<br>&=
gt=3B To: Pushpa Teja<br>&gt=3B Cc: yocto@yoctoproject.org=3B sadasivam<br>=
&gt=3B Subject: Re: [yocto] yocto Digest=2C Vol 46=2C Issue 109<br>&gt=3B <=
br>&gt=3B On Friday 01 August 2014 10:30:18 Pushpa Teja wrote:<br>&gt=3B &g=
t=3B yes but this problem is not at all solving there is no problem in my<b=
r>&gt=3B &gt=3B connection when ever i am trying this sites mirrors are not=
 available plz<br>&gt=3B &gt=3B give me a solution.<br>&gt=3B <br>&gt=3B I'=
m sorry but I don't think it's possible for me to just give you a solution<=
br>&gt=3B to this. You're getting timeouts from the upstream servers (multi=
ple<br>&gt=3B independent ones)=2C and it appears you're getting the same p=
roblem fetching<br>&gt=3B from our mirror server. That points to a problem =
at your end or somewhere<br>&gt=3B between you and those servers. I can't r=
eally help fix that other than to<br>&gt=3B suggest you try fetching the fi=
les externally=2C use traceroute to try to figure<br>&gt=3B out where the c=
onnection is getting dropped=2C talk to your ISP=2C etc.<br>&gt=3B <br>&gt=
=3B Cheers=2C<br>&gt=3B Paul<br>&gt=3B <br>&gt=3B --<br>&gt=3B <br>&gt=3B P=
aul Eggleton<br>&gt=3B Intel Open Source Technology Centre<br>&gt=3B --<br>=
&gt=3B _______________________________________________<br>&gt=3B yocto mail=
ing list<br>&gt=3B yocto@yoctoproject.org<br>&gt=3B https://lists.yoctoproj=
ect.org/listinfo/yocto<br></div> 		 	   		  </div></body>
</html>=

--_20ad1565-9660-4435-984a-ab358ca67466_--
