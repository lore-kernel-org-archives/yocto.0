Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AE83E0076F; Tue,  3 Feb 2015 11:25:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.99 listed in list.dnswl.org]
Received: from BAY004-OMC2S24.hotmail.com (bay004-omc2s24.hotmail.com
	[65.54.190.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7045CE005B4
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 11:25:08 -0800 (PST)
Received: from BAY169-W56 ([65.54.190.124]) by BAY004-OMC2S24.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751); 
	Tue, 3 Feb 2015 11:25:08 -0800
X-TMN: [z8lOhjjbrUzAbnFNUr327OlrQGBhyfs6]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BAY169-W56BDA3E2964EF0196A5AA9AE3D0@phx.gbl>
From: Jim Abernathy <jfabernathy@outlook.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Dean <dean@ripperd.com>
Date: Tue, 3 Feb 2015 14:25:08 -0500
Importance: Normal
In-Reply-To: <3808650.TK1iGa17XP@peggleto-mobl5.ger.corp.intel.com>
References: <BAY169-W273E3222BFC4F033CF313EAE3D0@phx.gbl>
	<54D10341.2090300@ripperd.com>,
	<3808650.TK1iGa17XP@peggleto-mobl5.ger.corp.intel.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 03 Feb 2015 19:25:08.0501 (UTC)
	FILETIME=[1F11F450:01D03FE7]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DNS nameservers in Yocto
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
X-List-Received-Date: Tue, 03 Feb 2015 19:25:13 -0000
Content-Type: multipart/alternative;
	boundary="_f39b9d96-79d0-42a5-8bd6-c65db6207c0e_"

--_f39b9d96-79d0-42a5-8bd6-c65db6207c0e_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



> From: paul.eggleton@linux.intel.com
> To: dean@ripperd.com
> CC: jfabernathy@outlook.com=3B yocto@yoctoproject.org
> Subject: Re: [yocto] DNS nameservers in Yocto
> Date: Tue=2C 3 Feb 2015 18:11:12 +0000
>=20
> Hi Dean=2C
>=20
> On Tuesday 03 February 2015 11:20:01 Dean wrote:
> > On 2/3/2015 9:43 AM=2C Jim Abernathy wrote:
> > > I find that for Static IPs=2C I have to manually add my DNS name serv=
ers
> > > to /etc/resolv.conf instead of what I'm use to and that's put the lin=
e
> > > in /etc/network/interfaces with the dns-nameserver [IP] [IP].
> > >=20
> > > My knowledge base comes from Ubuntu Server where putting everything i=
n
> > > "/etc/network/interfaces" covers most things.
> > >=20
> > > Anyone know why?
> >
> > Add resolvconf to your image.
> >=20
> > That being said=2C I'm using dora and the package there was very
> > incomplete. I had to add quite a bit in a .bbappend to make it work
> > properly.
>=20
> Would the issues you found have been fixed by this commit?
>=20
>   http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D35e0a3eb672=
5781eb291b3fa90694a68c3b64c60
>=20
> If not=2C we should really try to get these fixed in the original recipe =
- we'd=20
> certainly appreciate help there.
>=20
> Cheers=2C
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

Just adding 'resolvconf' fixed my issue on dizzy.

Jim A

 		 	   		  =

--_f39b9d96-79d0-42a5-8bd6-c65db6207c0e_
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
<body class=3D'hmmessage'><div dir=3D'ltr'><br><br><div>&gt=3B From: paul.e=
ggleton@linux.intel.com<br>&gt=3B To: dean@ripperd.com<br>&gt=3B CC: jfaber=
nathy@outlook.com=3B yocto@yoctoproject.org<br>&gt=3B Subject: Re: [yocto] =
DNS nameservers in Yocto<br>&gt=3B Date: Tue=2C 3 Feb 2015 18:11:12 +0000<b=
r>&gt=3B <br>&gt=3B Hi Dean=2C<br>&gt=3B <br>&gt=3B On Tuesday 03 February =
2015 11:20:01 Dean wrote:<br>&gt=3B &gt=3B On 2/3/2015 9:43 AM=2C Jim Abern=
athy wrote:<br>&gt=3B &gt=3B &gt=3B I find that for Static IPs=2C I have to=
 manually add my DNS name servers<br>&gt=3B &gt=3B &gt=3B to /etc/resolv.co=
nf instead of what I'm use to and that's put the line<br>&gt=3B &gt=3B &gt=
=3B in /etc/network/interfaces with the dns-nameserver [IP] [IP].<br>&gt=3B=
 &gt=3B &gt=3B <br>&gt=3B &gt=3B &gt=3B My knowledge base comes from Ubuntu=
 Server where putting everything in<br>&gt=3B &gt=3B &gt=3B "/etc/network/i=
nterfaces" covers most things.<br>&gt=3B &gt=3B &gt=3B <br>&gt=3B &gt=3B &g=
t=3B Anyone know why?<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B Add resolvconf to y=
our image.<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B That being said=2C I'm using =
dora and the package there was very<br>&gt=3B &gt=3B incomplete. I had to a=
dd quite a bit in a .bbappend to make it work<br>&gt=3B &gt=3B properly.<br=
>&gt=3B <br>&gt=3B Would the issues you found have been fixed by this commi=
t?<br>&gt=3B <br>&gt=3B   http://git.yoctoproject.org/cgit/cgit.cgi/poky/co=
mmit/?id=3D35e0a3eb6725781eb291b3fa90694a68c3b64c60<br>&gt=3B <br>&gt=3B If=
 not=2C we should really try to get these fixed in the original recipe - we=
'd <br>&gt=3B certainly appreciate help there.<br>&gt=3B <br>&gt=3B Cheers=
=2C<br>&gt=3B Paul<br>&gt=3B <br>&gt=3B -- <br>&gt=3B <br>&gt=3B Paul Eggle=
ton<br>&gt=3B Intel Open Source Technology Centre<br><br>Just adding 'resol=
vconf' fixed my issue on dizzy.<br><br>Jim A<br><br></div> 		 	   		  </div=
></body>
</html>=

--_f39b9d96-79d0-42a5-8bd6-c65db6207c0e_--
