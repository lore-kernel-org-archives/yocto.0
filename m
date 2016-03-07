Return-Path: <mkbrown32@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF7D7E008C1; Mon,  7 Mar 2016 13:24:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	FREEMAIL_REPLY, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mkbrown32[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.54.190.95 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from BAY004-OMC2S20.hotmail.com (bay004-omc2s20.hotmail.com
	[65.54.190.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9A61E0086B
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 13:24:02 -0800 (PST)
Received: from BAY181-W7 ([65.54.190.125]) by BAY004-OMC2S20.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Mon, 7 Mar 2016 13:24:01 -0800
X-TMN: [8j3a6BtnM7S+q8N4wCab330briqlN52f]
X-Originating-Email: [mkbrown32@hotmail.com]
Message-ID: <BAY181-W7C9AF39726986ECA0755AAEB10@phx.gbl>
From: Mark Brown <mkbrown32@hotmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 7 Mar 2016 13:24:01 -0800
Importance: Normal
In-Reply-To: <CAJTo0LY9iyRBDD+otav3mgWZMOfajHKhCDfnFHpSWNCR=H07gw@mail.gmail.com>
References: <BAY181-W50B0A075391862300C0057AEB10@phx.gbl>,
	<CAJTo0LY9iyRBDD+otav3mgWZMOfajHKhCDfnFHpSWNCR=H07gw@mail.gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 07 Mar 2016 21:24:01.0983 (UTC)
	FILETIME=[AB5D6CF0:01D178B7]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failed to fetch URL git://gitorious.org/raw2rgbpnm/raw2rgbpnm.git
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
X-List-Received-Date: Mon, 07 Mar 2016 21:24:06 -0000
Content-Type: multipart/alternative;
	boundary="_96e428bc-7410-43e2-a3fa-ae8a953fb32a_"

--_96e428bc-7410-43e2-a3fa-ae8a953fb32a_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I do not see anything in  /poky/meta-gumstix-extras/recipes-images/gumstix/=
gumstix-console-image.bb=20
which mentions  protocol or protocol=3Dgit.
Where would this change be made ?
=20
=20
From: ross.burton@intel.com
Date: Mon=2C 7 Mar 2016 20:05:28 +0000
Subject: Re: [yocto] Failed to fetch URL git://gitorious.org/raw2rgbpnm/raw=
2rgbpnm.git
To: mkbrown32@hotmail.com
CC: yocto@yoctoproject.org=3B ka6sox@gmail.com=3B opensource@keylevel.com


On 7 March 2016 at 19:11=2C Mark Brown <mkbrown32@hotmail.com> wrote:
WARNING: Failed to fetch URL git://gitorious.org/raw2rgbpnm/raw2rgbpnm.git=
=3Bprotocol=3Dgit=2C attempting MIRRORS if available
ERROR: Fetcher failure: Fetch command failed with exit code 128=2C output:
Cloning into bare repository '/home/bbusr/build/downloads/git2/gitorious.or=
g.raw2rgbpnm.raw2rgbpnm.git'...
fatal: unable to connect to gitorious.org:
gitorious.org[0: 64.13.172.37]: errno=3DConnection refused
gitorious.org[1: 2a02:c0:1014::1]: errno=3DNetwork is unreachable
$ git clone git://gitorious.org/raw2rgbpnm/raw2rgbpnm.gitCloning into 'raw2=
rgbpnm'...fatal: unable to connect to gitorious.org:gitorious.org[0: 64.13.=
172.37]: errno=3DConnection refusedgitorious.org[1: 2a02:c0:1014::1]: errno=
=3DNo route to host
$ git clone http://gitorious.org/raw2rgbpnm/raw2rgbpnm.gitCloning into 'raw=
2rgbpnm'...remote: Counting objects: 112=2C done.remote: Compressing object=
s: 100% (109/109)=2C done.remote: Total 112 (delta 75)=2C reused 0 (delta 0=
)Receiving objects: 100% (112/112)=2C 34.05 KiB | 0 bytes/s=2C done.Resolvi=
ng deltas: 100% (75/75)=2C done.Checking connectivity... done.
Looks like when gitorious was shut down and archived they turned off the sm=
art transport leaving just http=2C which makes sense.  You'll have to updat=
e the recipe to set =3Bprotocol=3Dhttp.
Ross 		 	   		  =

--_96e428bc-7410-43e2-a3fa-ae8a953fb32a_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>I do not see anything in&nbsp=3B=
 /poky/meta-gumstix-extras/recipes-images/gumstix/gumstix-console-image.bb&=
nbsp=3B<BR>which mentions&nbsp=3B protocol or protocol=3Dgit.<BR>Where woul=
d this change be made ?<BR>&nbsp=3B<BR><br />&nbsp=3B<BR><div><hr id=3D"sto=
pSpelling">From&#58=3B ross.burton@intel.com<br>Date&#58=3B Mon=2C 7 Mar 20=
16 20&#58=3B05&#58=3B28 +0000<br>Subject&#58=3B Re&#58=3B [yocto] Failed to=
 fetch URL git&#58=3B//gitorious.org/raw2rgbpnm/raw2rgbpnm.git<br>To&#58=3B=
 mkbrown32@hotmail.com<br>CC&#58=3B yocto@yoctoproject.org=3B ka6sox@gmail.=
com=3B opensource@keylevel.com<br><br><div dir=3Dltr><div class=3Decxgmail_=
extra><br><div class=3Decxgmail_quote>On 7 March 2016 at 19&#58=3B11=2C Mar=
k Brown <span dir=3Dltr>&lt=3B<a href=3D"mailto&#58=3Bmkbrown32@hotmail.com=
" target=3D_blank>mkbrown32@hotmail.com</a>&gt=3B</span> wrote&#58=3B<br><b=
lockquote class=3Decxgmail_quote style=3D"border-left-width&#58=3B1px=3Bbor=
der-left-color&#58=3Brgb(204=2C204=2C204)=3Bborder-left-style&#58=3Bsolid=
=3Bpadding-left&#58=3B1ex=3B"><div dir=3Dltr>WARNING&#58=3B Failed to fetch=
 URL git&#58=3B//<a href=3D"http&#58=3B//gitorious.org/raw2rgbpnm/raw2rgbpn=
m.git%3bprotocol=3Dgit" target=3D_blank>gitorious.org/raw2rgbpnm/raw2rgbpnm=
.git=3Bprotocol=3Dgit</a>=2C attempting MIRRORS if available<br>ERROR&#58=
=3B Fetcher failure&#58=3B Fetch command failed with exit code 128=2C outpu=
t&#58=3B<br>Cloning into bare repository '/home/bbusr/build/downloads/git2/=
gitorious.org.raw2rgbpnm.raw2rgbpnm.git'...<br>fatal&#58=3B unable to conne=
ct to <a href=3D"http&#58=3B//gitorious.org" target=3D_blank>gitorious.org<=
/a>&#58=3B<br><a href=3D"http&#58=3B//gitorious.org" target=3D_blank>gitori=
ous.org</a>[0&#58=3B 64.13.172.37]&#58=3B errno=3DConnection refused<br><a =
href=3D"http&#58=3B//gitorious.org" target=3D_blank>gitorious.org</a>[1&#58=
=3B 2a02&#58=3Bc0&#58=3B1014&#58=3B&#58=3B1]&#58=3B errno=3DNetwork is unre=
achable</div></blockquote></div><br><div class=3Decxgmail_extra>$ git clone=
 git&#58=3B//<a href=3D"http&#58=3B//gitorious.org/raw2rgbpnm/raw2rgbpnm.gi=
t" target=3D_blank>gitorious.org/raw2rgbpnm/raw2rgbpnm.git</a></div><div cl=
ass=3Decxgmail_extra>Cloning into 'raw2rgbpnm'...</div><div class=3Decxgmai=
l_extra>fatal&#58=3B unable to connect to <a href=3D"http&#58=3B//gitorious=
.org" target=3D_blank>gitorious.org</a>&#58=3B</div><div class=3Decxgmail_e=
xtra><a href=3D"http&#58=3B//gitorious.org" target=3D_blank>gitorious.org</=
a>[0&#58=3B 64.13.172.37]&#58=3B errno=3DConnection refused</div><div class=
=3Decxgmail_extra><a href=3D"http&#58=3B//gitorious.org" target=3D_blank>gi=
torious.org</a>[1&#58=3B 2a02&#58=3Bc0&#58=3B1014&#58=3B&#58=3B1]&#58=3B er=
rno=3DNo route to host</div><div class=3Decxgmail_extra><br></div><div clas=
s=3Decxgmail_extra>$ git clone <a href=3D"http&#58=3B//gitorious.org/raw2rg=
bpnm/raw2rgbpnm.git" target=3D_blank>http&#58=3B//gitorious.org/raw2rgbpnm/=
raw2rgbpnm.git</a></div><div class=3Decxgmail_extra>Cloning into 'raw2rgbpn=
m'...</div><div class=3Decxgmail_extra>remote&#58=3B Counting objects&#58=
=3B 112=2C done.</div><div class=3Decxgmail_extra>remote&#58=3B Compressing=
 objects&#58=3B 100% (109/109)=2C done.</div><div class=3Decxgmail_extra>re=
mote&#58=3B Total 112 (delta 75)=2C reused 0 (delta 0)</div><div class=3Dec=
xgmail_extra>Receiving objects&#58=3B 100% (112/112)=2C 34.05 KiB | 0 bytes=
/s=2C done.</div><div class=3Decxgmail_extra>Resolving deltas&#58=3B 100% (=
75/75)=2C done.</div><div class=3Decxgmail_extra>Checking connectivity... d=
one.</div><div class=3Decxgmail_extra><br></div><div class=3Decxgmail_extra=
>Looks like when gitorious was shut down and archived they turned off the s=
mart transport leaving just http=2C which makes sense.&#160=3B You'll have =
to update the recipe to set =3Bprotocol=3Dhttp.</div><div class=3Decxgmail_=
extra><br></div><div class=3Decxgmail_extra>Ross</div></div></div></div> 		=
 	   		  </div></body>
</html>=

--_96e428bc-7410-43e2-a3fa-ae8a953fb32a_--
