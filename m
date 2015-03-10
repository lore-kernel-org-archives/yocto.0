Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27A6BE0076F; Tue, 10 Mar 2015 04:45:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.90.87 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm24.bullet.mail.ne1.yahoo.com (nm24.bullet.mail.ne1.yahoo.com
	[98.138.90.87])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36F5CE00750
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 04:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1425987895; bh=82D0cSrqW5O3UMfyGII4WkJ/J14LqU9UZP734ZjOO6o=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=Z4n9u0NZFYTXgrVhuPwKc/ughQtg88WH6s8Vpd4zZPjxCzEoUvCJU7ZSHuI0SmkT23ktSYswKim0LZeZzT2O3aqE1Yz/9dar9Gg5kYYqcGcY+7X5BGO883iK24THcTGI/jelGV+s0CH+MODXwgWYx7NZLUl9xTPJieTmj2zfv10JG4WgEpf/9cwbJ3MQZFIcJvFfTnkCtEYe44PySlnn+8qQRMJZfwxvfm4sdSQwwmJPBKqLdCF0VbeUUUQq6n4HS+XLg1BjqdEQEN/7WBxRxHPvMPmUjKOu+5e8WaA0g2aBcr8eL7GKaHwEQNfipZhnXoXiC0gOfSo/GYoBy/Ev7Q==
Received: from [98.138.101.129] by nm24.bullet.mail.ne1.yahoo.com with NNFMP;
	10 Mar 2015 11:44:55 -0000
Received: from [98.138.89.245] by tm17.bullet.mail.ne1.yahoo.com with NNFMP;
	10 Mar 2015 11:44:54 -0000
Received: from [127.0.0.1] by omp1059.mail.ne1.yahoo.com with NNFMP;
	10 Mar 2015 11:44:54 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 913032.82234.bm@omp1059.mail.ne1.yahoo.com
X-YMail-OSG: mREJ0PsVM1nuGvAi_VFWFX19YtWfGj9jl0f6euMZl_YQbg9kNjtbNkwoJt1ZFIq
	SrSsSza8ljiKMqJksSoVk0GPmWmXH0kg7bE8vCHk_3QkGROQlfdUNU_1unf1zSr3aQBWZrC3JjN5
	RC24nh9GS3yWkVC26vKckOmP9E_UArO5BCnRDv_FMElSU_7EBX3HDgwImDoncYzyW8pEOn1Iyf7U
	bFKsjRAt7VPk5jLbenEYou6QIbgqDXOzbWkeVCHpFygI_vJAd6olSZ.XmSDkX1wee1lxmBYT7_bQ
	_FBRKES6DcV8fRN4_lI93fC46IbKh2e2JrxiWpFNALUydab4s9PmehDJVDrcXQdAa_md91qpxH7l
	BaP66sXUKdUApoAxmvAkf_rmxAMB5PCf3Lv06_cxGoJoOdh4nOddUo16w3VhXk5n8xFC4VQgYylR
	AdlXOEdjUqZRc89evfJl3db5c98kD8gQtmaorMI_B5Br0phH_EhrDySo7DgH5ztmQiKVDV8j_0ld
	3GZG7EQV2mHjHKu4mEsA_lOr4gu1AZTvRJJfqEcC66uuH_0qMz4vGhaBLZveecLB8w.Uxwf93Qwb
	Uqq11MLA0tGPWMdonVKG3Gg_YRfvRYiOaI3tuD8Zc3_XoSSvKET8G8G6CIhAnzgcr0xsYLR.p9Bf
	PYqJRhWoZuXsZW722RAk-
Received: by 98.138.101.176; Tue, 10 Mar 2015 11:44:54 +0000 
Date: Tue, 10 Mar 2015 11:44:54 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: "kaiu@gmx.de" <kaiu@gmx.de>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1602160945.1699797.1425987894058.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <CAAKMwiqF-Jok3qxmdxwDATVwRGopnvUzjgo5pG+dSHpqa=gKXA@mail.gmail.com>
References: <CAAKMwiqF-Jok3qxmdxwDATVwRGopnvUzjgo5pG+dSHpqa=gKXA@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: created layer smstools3.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Mar 2015 11:45:00 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1699796_372846957.1425987894051"

------=_Part_1699796_372846957.1425987894051
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello good to have you on board. One question though.
What will be the purpose of the layer.=20
It seems to be a bit of an overkill to have it for only one recipe.Do you i=
ntent to also add more recipes inside?If not, do you intend to move the rec=
ipe inside meta-openemebedded?
One last think. Take a look at: OpenEmbedded Metadata Index - layersMaybe y=
ou can add your layer there.

| =C2=A0 |
| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 |
| OpenEmbedded Metadata Index - layersmeta-oe Additional shared OE metadata=
 Base  |
|  |
| View on layers.openembedded.org | Preview by Yahoo |
|  |
| =C2=A0 |



Have a nice day,Alex Vaduva=20

     On Tuesday, March 10, 2015 11:38 AM, Kai Ulrich <kaiu@gmx.de> wrote:
  =20

 Hi,

I created an layer with a recipe for smstools3.
You can find it on https://github.com/kaiulrich/meta-smstools3

If you have any comments to improve meta-smstools3,
please tell me (It is my first layer / recipe :-) )

Friendly regards
Kai=20




--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


   

------=_Part_1699796_372846957.1425987894051
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12px"><div id=3D"yui_3_16_0_1_1425884900693_160253">Hello good to h=
ave you on board. </div><div id=3D"yui_3_16_0_1_1425884900693_160254" dir=
=3D"ltr">One question though.<br></div><div id=3D"yui_3_16_0_1_142588490069=
3_160445" dir=3D"ltr">What will be the purpose of the layer. <br></div><div=
 id=3D"yui_3_16_0_1_1425884900693_160761" dir=3D"ltr">It seems to be a bit =
of an overkill to have it for only one recipe.</div><div id=3D"yui_3_16_0_1=
_1425884900693_160633" dir=3D"ltr">Do you intent to also add more recipes i=
nside?</div><div id=3D"yui_3_16_0_1_1425884900693_161431" dir=3D"ltr">If no=
t, do you intend to move the recipe inside meta-openemebedded?</div><div id=
=3D"yui_3_16_0_1_1425884900693_161440" dir=3D"ltr"><br></div><div id=3D"yui=
_3_16_0_1_1425884900693_161643" dir=3D"ltr">One last think. Take a look at:=
 <a id=3D"yui_3_16_0_1_1425884900693_161646" href=3D"http://layers.openembe=
dded.org/layerindex/branch/master/layers/">OpenEmbedded Metadata Index - la=
yers</a></div><div dir=3D"ltr">Maybe you can add your layer there.<br></div=
><div style=3D"width:450px; font-family: 'Georgia', 'Times', 'Times New Rom=
an', 'serif';margin-top:5px; margin-bottom: 5px; background-color: #ffffff;=
" id=3D"enhancrCard_0" class=3D"link-enhancr-attachment link-enhancr-elemen=
t" contenteditable=3D"false"><table id=3D"yui_3_16_0_1_1425884900693_161670=
" class=3D"link-enhancr-element" style=3D"width:450px; height:auto; positio=
n: relative; display: block;" border=3D"0" cellpadding=3D"0" cellspacing=3D=
"0"><tbody id=3D"yui_3_16_0_1_1425884900693_161669"><tr class=3D"link-enhan=
cr-element"><td class=3D"link-enhancr-element" colspan=3D"7" style=3D"heigh=
t: 1px; background-color: #e5e5e5; font-size: 1px; border-collapse: collaps=
e;"><div class=3D"link-enhancr-element" style=3D"height: 1px; background-co=
lor: #e5e5e5; font-size: 1px; line-height:0px;">&nbsp;</div></td></tr><tr i=
d=3D"yui_3_16_0_1_1425884900693_161875" class=3D"link-enhancr-element"><td =
rowspan=3D"5" class=3D"link-enhancr-element" style=3D"width: 1px; backgroun=
d-color: #e5e5e5; font-size: 1pt; border-collapse: collapse;"><div class=3D=
"link-enhancr-element" style=3D"width: 1px; background-color: #e5e5e5; font=
-size: 1pt;">&nbsp;</div></td><td rowspan=3D"5" class=3D"link-enhancr-eleme=
nt" style=3D"width: 14px; background-color: #ffffff; font-size: 0pt; border=
-collapse: collapse;"><div class=3D"link-enhancr-element" style=3D"width: 1=
4px; background-color: #ffffff; font-size: 14pt;">&nbsp;</div></td><td id=
=3D"yui_3_16_0_1_1425884900693_161874" colspan=3D"2" class=3D"link-enhancr-=
element" style=3D"height: 6px; background-color: #ffffff; font-size: 0pt; b=
order-collapse: collapse;"><div id=3D"yui_3_16_0_1_1425884900693_161873" cl=
ass=3D"link-enhancr-element" style=3D"height: 6px; background-color: #fffff=
f; font-size: 6pt;">&nbsp;</div></td><td rowspan=3D"5" class=3D"link-enhanc=
r-element" style=3D"width: 20px; background-color: #ffffff; font-size: 0pt;=
 border-collapse: collapse;"><div class=3D"link-enhancr-element" style=3D"w=
idth: 20px; background-color: #ffffff; font-size: 20pt;">&nbsp;</div></td><=
td class=3D"link-enhancr-element" rowspan=3D"5" style=3D"width: 1px; backgr=
ound-color: #e5e5e5; font-size: 1pt; border-collapse: collapse;" width=3D"1=
"><div class=3D"link-enhancr-element" style=3D"width: 1px; background-color=
: #e5e5e5; font-size: 1pt;">&nbsp;</div></td></tr><tr id=3D"yui_3_16_0_1_14=
25884900693_161668"><td id=3D"yui_3_16_0_1_1425884900693_161667" class=3D"l=
ink-enhancr-element" colspan=3D"2" style=3D"width: 100%; vertical-align: mi=
ddle; font-family: 'Georgia', 'Times', 'Times New Roman', 'serif';"><div id=
=3D"yui_3_16_0_1_1425884900693_161666" class=3D"link-enhancr-text-part link=
-enhancr-element" style=3D"line-height:16.5px; background-color: #ffffff;  =
width: 414px;"><div id=3D"yui_3_16_0_1_1425884900693_161665" class=3D"link-=
enhancr-element" style=3D"word-wrap: break-word; word-break: break-all;"><s=
pan class=3D"link-enhancr-element icon  icon-shrink link-enhancr-toggle"></=
span><span class=3D"link-enhancr-element icon icon-close link-enhancr-delet=
e"></span><a id=3D"yui_3_16_0_1_1425884900693_161867" href=3D"http://layers=
.openembedded.org/layerindex/branch/master/layers/" class=3D"link-enhancr-c=
ard-urlWrapper link-enhancr-element" style=3D"text-decoration: none !import=
ant; color: #000000 !important; line-height: 100%; font-size: 18px; display=
: block;"><span id=3D"yui_3_16_0_1_1425884900693_161866" class=3D"link-enha=
ncr-element link-enhancr-card-title" style=3D"margin: 0; font-weight: norma=
l;margin-bottom: 3px; font-size: 18px; line-height: 21px; max-height: 43px;=
 color: #000000; overflow: hidden !important; display: inline-block;">OpenE=
mbedded Metadata Index - layers</span></a><div id=3D"yui_3_16_0_1_142588490=
0693_161664" style=3D"font-size: 13px; line-height: 20px; color: #999999; m=
ax-height: 81px; font-family: 'Georgia', 'Times', 'Times New Roman', 'serif=
';overflow: hidden;" class=3D"link-enhancr-card-description link-enhancr-el=
ement">meta-oe Additional shared OE metadata Base </div></div></div></td></=
tr><tr><td colspan=3D"2" class=3D"link-enhancr-element" style=3D"height: 6p=
x; background-color: #ffffff; font-size: 0pt; border-collapse: collapse;"><=
div class=3D"link-enhancr-element" style=3D"height: 6px; background-color: =
#ffffff; font-size: 6pt;"></div></td></tr><tr><td class=3D"link-enhancr-ele=
ment" style=3D"vertical-align: middle; font-family: 'Arial', 'Helvetica Neu=
e', 'Helvetica', 'sans-serif';"><div class=3D"link-enhancr-element" style=
=3D"font-size: 0pt;"><a href=3D"http://layers.openembedded.org/layerindex/b=
ranch/master/layers/" class=3D"link-enhancr-card-url link-enhancr-element" =
style=3D"color: black; text-decoration: none !important;cursor:pointer !imp=
ortant;" target=3D"_blank"><span id=3D"yui_3_16_0_1_1425884900693_161661" c=
lass=3D"link-enhancr-element link-enhancr-view-on" style=3D"display: inline=
-block; line-height: 11px; max-width: 314px; min-width: 254px; overflow: hi=
dden; max-height: 13px; word-break: break-all;"><span class=3D"link-enhancr=
-element link-enhancr-mobile-no-resize" style=3D"vertical-align:middle; fon=
t-size: 9px; line-height: 11px; color: #999999; -moz-text-size-adjust: none=
; -ms-text-size-adjust: none; -webkit-text-size-adjust:none; text-size-adju=
st:none;">View on <span style=3D"font-weight: bold" class=3D"link-enhancr-v=
iew-on-domain">layers.openembedded.org</span></span></span></a></div></td><=
td class=3D"link-enhancr-element" style=3D"vertical-align: middle; width: 1=
00px; font-family: 'Arial', 'Helvetica Neue', 'Helvetica', 'sans-serif';"><=
div class=3D"link-enhancr-element link-enhancr-preview-wrapper" style=3D"ma=
x-width: 100px; min-width: 80px; overflow: hidden; text-align: right; line-=
height: 11px; max-height: 13px; font-size: 0pt;"><span class=3D"link-enhanc=
r-element link-enhancr-preview-by link-enhancr-mobile-no-resize" style=3D"v=
ertical-align:middle; font-size: 9px; line-height: 11px; color: #999999; -m=
oz-text-size-adjust: none; -ms-text-size-adjust: none; -webkit-text-size-ad=
just:none; text-size-adjust:none;">Preview by Yahoo</span></div></td></tr><=
tr><td colspan=3D"2" class=3D"link-enhancr-element" style=3D"height: 9px; b=
ackground-color: #ffffff; font-size: 0pt; border-collapse: collapse;"><div =
class=3D"link-enhancr-element" style=3D"height: 9px; background-color: #fff=
fff; font-size: 9pt;"></div></td></tr><tr class=3D"link-enhancr-element"><t=
d class=3D"link-enhancr-element" colspan=3D"7" style=3D"height: 1px; backgr=
ound-color: #e5e5e5; font-size: 1px; border-collapse: collapse;"><div class=
=3D"link-enhancr-element" style=3D"height: 1px; background-color: #e5e5e5; =
font-size: 1px; line-height:0px">&nbsp;</div></td></tr></tbody></table></di=
v><div id=3D"yui_3_16_0_1_1425884900693_160052"><br><span></span></div><div=
 id=3D"yui_3_16_0_1_1425884900693_161869"><br><span></span></div><div dir=
=3D"ltr" id=3D"yui_3_16_0_1_1425884900693_161870"><span>Have a nice day,</s=
pan></div><div id=3D"yui_3_16_0_1_1425884900693_161871" dir=3D"ltr"><span>A=
lex Vaduva</span></div> <div class=3D"qtdSeparateBR"><br><br></div><div sty=
le=3D"display: block;" class=3D"yahoo_quoted"> <div style=3D"font-family: H=
elveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; =
font-size: 12px;"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue=
, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 16px;"> <div dir=
=3D"ltr"> <font face=3D"Arial" size=3D"2"> On Tuesday, March 10, 2015 11:38=
 AM, Kai Ulrich &lt;kaiu@gmx.de&gt; wrote:<br> </font> </div>  <br><br> <di=
v class=3D"y_msg_container"><div id=3D"yiv5942400161"><div dir=3D"ltr"><div=
><div><div><div><div><div>Hi,<br><br></div>I created an layer with a recipe=
 for smstools3.<br></div>You can find it on <a rel=3D"nofollow" target=3D"_=
blank" href=3D"https://github.com/kaiulrich/meta-smstools3">https://github.=
com/kaiulrich/meta-smstools3</a><br></div><br></div>If you have any comment=
s to improve meta-smstools3,<br>please tell me (It is my first layer / reci=
pe :-) )<br><br></div>Friendly regards<br></div>Kai <br><div><div><br><div>=
<div><div><div><div><div><br><br></div></div></div></div></div></div></div>=
</div></div></div><br>-- <br>______________________________________________=
_<br>yocto mailing list<br><a ymailto=3D"mailto:yocto@yoctoproject.org" hre=
f=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><a href=
=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https:=
//lists.yoctoproject.org/listinfo/yocto</a><br><br><br></div>  </div> </div=
>  </div> </div></body></html>

------=_Part_1699796_372846957.1425987894051--
