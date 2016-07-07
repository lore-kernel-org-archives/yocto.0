Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF90FE00C40; Wed,  6 Jul 2016 23:13:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0584E00C1D
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 23:13:42 -0700 (PDT)
In-Reply-To: <577DF081.4000603@topic.nl>
References: <OF927BD932.09AFBA11-ONC1257FE8.00500F45-C1257FE8.005101E1@esa-grimma.de>	<CAF3SDA4m2c0YrqaxBAzpROwbKeOdBPCMVekpkUQ7x02ScPo4yg@mail.gmail.com>
	<577DF081.4000603@topic.nl>
To: Mike Looijmans <mike.looijmans@topic.nl>
MIME-Version: 1.0
X-KeepSent: 1ABF546F:CEB962CF-C1257FE9:0021A297;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF1ABF546F.CEB962CF-ONC1257FE9.0021A297-C1257FE9.002235EB@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Thu, 7 Jul 2016 08:13:40 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 07.07.2016 08:13:43,
	Serialize complete at 07.07.2016 08:13:43
Cc: yocto@yoctoproject.org
Subject: Antwort: Re: How to create a directory for an SD-Card mount?
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
X-List-Received-Date: Thu, 07 Jul 2016 06:13:47 -0000
X-Groupsio-MsgNum: 30934
Content-Type: multipart/related; boundary="=_related 002235E9C1257FE9_="

--=_related 002235E9C1257FE9_=
Content-Type: multipart/alternative; boundary="=_alternative 002235E9C1257FE9_="

--=_alternative 002235E9C1257FE9_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Problem solved! Thank you for the help.

It was solved by:

do=5Finstall () {
...
install -d ${D}/media/sd1
...
}

FILES=5F${PN} +=3D "media/sd1"

@Mike:
I am using the meta-atmel. The mount dir is created. In my case I have a=20
rule which mounts the sd card to mount/sd1, That's why I need to create=20
sd1. But good idea, maybee I will change the rule, so it creates (if=20
needed) the dir to mount.

Regards!

Stefan Jaritz

------------------------------------------------------------
ESA Elektroschaltanlagen Grimma GmbH
Broner Ring 30
04668 Grimma
Telefon: +49 3437 9211 176
Telefax: +49 3437 9211 26
E-Mail: s.jaritz@esa-grimma.de
Internet: www.esa-grimma.de


Gesch=E4ftsf=FChrer:
Dipl.-Ing. J=F6rg Gaitzsch
J=F6rg Reinker

Sitz der Gesellschaft: Grimma
Ust.-ID: DE 141784437
Amtsgericht: Leipzig, HRB 5159
Steuernummer: 238/108/00755


Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte=20
Informationen.=20
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich=20
erhalten=20
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese=20
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser=20
Mail=20
ist nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =

are=20
not the intended recipient (or have received this e-mail in error) please=20
notify the sender immediately and destroy this e-mail. Any unauthorized=20
copying, disclosure or distribution of the material in this e-mail is=20
strictly=20
forbidden.



Von:    Mike Looijmans <mike.looijmans@topic.nl>
An:     <yocto@yoctoproject.org>
Datum:  07.07.2016 08:04
Betreff:        Re: [yocto] How to create a directory for an SD-Card=20
mount?
Gesendet von:   yocto-bounces@yoctoproject.org



On many embedded systems, /media/ is volatile. So you probably need to=20
create=20
an entry for a volatile dir.

Better is to create/delete the directory in the mount script. That also=20
avoids=20
races, since creating a directory is an atomic operation. And it allos you =

to=20
mount multiple devices.

I'm actually surprised that this isn't already in place. Maybe you're=20
missing=20
some obscure udev package in your image?

On 06-07-16 20:09, Daniel. wrote:
> install -d ${D}/media/sd1
> ???
>
> 2016-07-06 11:44 GMT-03:00  <S.Jaritz@esa-grimma.de>:
>> Hej
>>
>> I managed to create and install a rule that should mount a sd card to
>> "/media/sd1".  To finish it, I need to create the directory "sd1" in=20
media.
>> My recipe for the rule looks like:
>> ###################
>> SUMMARY =3D "the udev rules for the board"
>> SECTION =3D "rules"
>> LICENSE =3D "CLOSED"
>>
>> SRC=5FURI =3D "file://50-mmc.rules \
>>          "
>> S =3D "${WORKDIR}"
>>
>> do=5Finstall () {
>>          install -d ${D}${sysconfdir}/udev/rules.d
>>          install -m 0644 ${WORKDIR}/50-mmc.rules
>> ${D}${sysconfdir}/udev/rules.d/
>> }
>> ###################
>> How to create a dir in do=5Finstall which goes to the package?
>>
>> By the way:
>> I was also appending fstab after this article
>>
>> https://communities.intel.com/thread/49251
>>
>> Is there an better way to uncomment/modify that one line in fstab?
>>
>> Regards!
>>
>> Stefan Jaritz
>>
>> ------------------------------------------------------------
>> ESA Elektroschaltanlagen Grimma GmbH
>> Broner Ring 30
>> 04668 Grimma
>> Telefon: +49 3437 9211 176
>> Telefax: +49 3437 9211 26
>> E-Mail: s.jaritz@esa-grimma.de
>> Internet: www.esa-grimma.de
>>
>>
>> Gesch=E4ftsf=FChrer:
>> Dipl.-Ing. J=F6rg Gaitzsch
>> J=F6rg Reinker
>>
>> Sitz der Gesellschaft: Grimma
>> Ust.-ID: DE 141784437
>> Amtsgericht: Leipzig, HRB 5159
>> Steuernummer: 238/108/00755
>>
>>
>> Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte
>> Informationen.
>> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich
>> erhalten
>> haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese
>> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe=20
dieser
>> Mail
>> ist nicht gestattet.
>>
>> This e-mail may contain confidential and/or privileged information. If=20
you
>> are
>> not the intended recipient (or have received this e-mail in error)=20
please
>> notify the sender immediately and destroy this e-mail. Any unauthorized
>> copying, disclosure or distribution of the material in this e-mail is
>> strictly
>> forbidden.
>> --
>>=20
=20
Kind regards,
=20
Mike Looijmans
System Expert
=20



TOPIC Products
=20
=20

Materiaalweg 4
=20
=20

5681 RJ Best
T:
+31 (0) 499 33 69 69

Postbus 440
E:
mike.looijmans@topicproducts.com

5680 AK Best
W:
www.topicproducts.com

The Netherlands




Please consider the environment before printing this e-mail

Topic zoekt gedreven (embedded) software specialisten!

=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>
--=20
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


--=_alternative 002235E9C1257FE9_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Problem solved! Thank you for the help.<=
/font>
<br>
<br><font size=3D2 face=3D"sans-serif">It was solved by:</font>
<br>
<br><font size=3D2 face=3D"sans-serif">do=5Finstall () {</font>
<br><font size=3D2 face=3D"sans-serif">...</font>
<br><font size=3D2 face=3D"sans-serif">install -d ${D}/media/sd1</font>
<br><font size=3D2 face=3D"sans-serif">...</font>
<br><font size=3D2 face=3D"sans-serif">}</font>
<br>
<br><font size=3D2 face=3D"sans-serif">FILES=5F${PN} +=3D &quot;media/sd1&q=
uot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">@Mike:</font>
<br><font size=3D2 face=3D"sans-serif">I am using the meta-atmel. The mount
dir is created. In my case I have a rule which mounts the sd card to mount/=
sd1,
That's why I need to create sd1. But good idea, maybee I will change the
rule, so it creates (if needed) the dir to mount.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Regards!</font>
<br><font size=3D2 face=3D"sans-serif"><br>
Stefan Jaritz<br>
<br>
------------------------------------------------------------<br>
ESA Elektroschaltanlagen Grimma GmbH<br>
Broner Ring 30<br>
04668 Grimma<br>
Telefon: +49 3437 9211 176<br>
Telefax: +49 3437 9211 26<br>
E-Mail: s.jaritz@esa-grimma.de<br>
Internet: </font><a href=3D"www.esa-grimma.de"><font size=3D2 face=3D"sans-=
serif">www.esa-grimma.de</font></a><font size=3D2 face=3D"sans-serif"><br>
<br>
<br>
Gesch=E4ftsf=FChrer:<br>
Dipl.-Ing. J=F6rg Gaitzsch<br>
J=F6rg Reinker<br>
<br>
Sitz der Gesellschaft: Grimma<br>
Ust.-ID: DE 141784437<br>
Amtsgericht: Leipzig, HRB 5159<br>
Steuernummer: 238/108/00755<br>
<br>
<br>
Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen.
<br>
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich
erhalten <br>
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese
<br>
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
Mail <br>
ist nicht gestattet.<br>
<br>
This e-mail may contain confidential and/or privileged information. If
you are <br>
not the intended recipient (or have received this e-mail in error) please
<br>
notify the sender immediately and destroy this e-mail. Any unauthorized
<br>
copying, disclosure or distribution of the material in this e-mail is stric=
tly
<br>
forbidden.</font>
<br>
<br>
<br>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Von: &nbsp; &nbsp; &=
nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">Mike Looijmans &lt;mike.loo=
ijmans@topic.nl&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">An: &nbsp; &nbsp; &n=
bsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">&lt;yocto@yoctoproject.org&=
gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">07.07.2016 08:04</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: [yocto]
How to create a directory for an SD-Card mount?</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Gesendet von: &nbsp;=
 &nbsp;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">yocto-bounces@yoctop=
roject.org</font>
<br>
<hr noshade>
<br>
<br>
<br><font size=3D3>On many embedded systems, /media/ is volatile. So you
probably need to create <br>
an entry for a volatile dir.<br>
<br>
Better is to create/delete the directory in the mount script. That also
avoids <br>
races, since creating a directory is an atomic operation. And it allos
you to <br>
mount multiple devices.<br>
<br>
I'm actually surprised that this isn't already in place. Maybe you're missi=
ng
<br>
some obscure udev package in your image?<br>
<br>
On 06-07-16 20:09, Daniel. wrote:<br>
&gt; install -d ${D}/media/sd1<br>
&gt; ???<br>
&gt;<br>
&gt; 2016-07-06 11:44 GMT-03:00 &nbsp;&lt;S.Jaritz@esa-grimma.de&gt;:<br>
&gt;&gt; Hej<br>
&gt;&gt;<br>
&gt;&gt; I managed to create and install a rule that should mount a sd
card to<br>
&gt;&gt; &quot;/media/sd1&quot;. &nbsp;To finish it, I need to create the
directory &quot;sd1&quot; in media.<br>
&gt;&gt; My recipe for the rule looks like:<br>
&gt;&gt; ###################<br>
&gt;&gt; SUMMARY =3D &quot;the udev rules for the board&quot;<br>
&gt;&gt; SECTION =3D &quot;rules&quot;<br>
&gt;&gt; LICENSE =3D &quot;CLOSED&quot;<br>
&gt;&gt;<br>
&gt;&gt; SRC=5FURI =3D &quot;</font><a href=3D"file://50-mmc.rules/"><font =
size=3D3>file://50-mmc.rules</font></a><font size=3D3>
\<br>
&gt;&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&quot;<br>
&gt;&gt; S =3D &quot;${WORKDIR}&quot;<br>
&gt;&gt;<br>
&gt;&gt; do=5Finstall () {<br>
&gt;&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;install -d ${D}${sysconfdir}/ude=
v/rules.d<br>
&gt;&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;install -m 0644 ${WORKDIR}/50-mm=
c.rules<br>
&gt;&gt; ${D}${sysconfdir}/udev/rules.d/<br>
&gt;&gt; }<br>
&gt;&gt; ###################<br>
&gt;&gt; How to create a dir in do=5Finstall which goes to the package?<br>
&gt;&gt;<br>
&gt;&gt; By the way:<br>
&gt;&gt; I was also appending fstab after this article<br>
&gt;&gt;<br>
&gt;&gt; </font><a href=3Dhttps://communities.intel.com/thread/49251><font =
size=3D3>https://communities.intel.com/thread/49251</font></a><font size=3D=
3><br>
&gt;&gt;<br>
&gt;&gt; Is there an better way to uncomment/modify that one line in fstab?=
<br>
&gt;&gt;<br>
&gt;&gt; Regards!<br>
&gt;&gt;<br>
&gt;&gt; Stefan Jaritz<br>
&gt;&gt;<br>
&gt;&gt; ------------------------------------------------------------<br>
&gt;&gt; ESA Elektroschaltanlagen Grimma GmbH<br>
&gt;&gt; Broner Ring 30<br>
&gt;&gt; 04668 Grimma<br>
&gt;&gt; Telefon: +49 3437 9211 176<br>
&gt;&gt; Telefax: +49 3437 9211 26<br>
&gt;&gt; E-Mail: s.jaritz@esa-grimma.de<br>
&gt;&gt; Internet: </font><a href=3D"www.esa-grimma.de"><font size=3D3>www.=
esa-grimma.de</font></a><font size=3D3><br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Gesch=E4ftsf=FChrer:<br>
&gt;&gt; Dipl.-Ing. J=F6rg Gaitzsch<br>
&gt;&gt; J=F6rg Reinker<br>
&gt;&gt;<br>
&gt;&gt; Sitz der Gesellschaft: Grimma<br>
&gt;&gt; Ust.-ID: DE 141784437<br>
&gt;&gt; Amtsgericht: Leipzig, HRB 5159<br>
&gt;&gt; Steuernummer: 238/108/00755<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzt=
e<br>
&gt;&gt; Informationen.<br>
&gt;&gt; Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=
=FCmlich<br>
&gt;&gt; erhalten<br>
&gt;&gt; haben, informieren Sie bitte sofort den Absender und l=F6schen Sie
diese<br>
&gt;&gt; Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe
dieser<br>
&gt;&gt; Mail<br>
&gt;&gt; ist nicht gestattet.<br>
&gt;&gt;<br>
&gt;&gt; This e-mail may contain confidential and/or privileged information.
If you<br>
&gt;&gt; are<br>
&gt;&gt; not the intended recipient (or have received this e-mail in error)
please<br>
&gt;&gt; notify the sender immediately and destroy this e-mail. Any unautho=
rized<br>
&gt;&gt; copying, disclosure or distribution of the material in this e-mail
is<br>
&gt;&gt; strictly<br>
&gt;&gt; forbidden.<br>
&gt;&gt; --<br>
&gt;&gt; </font>
<br><font size=3D3>&nbsp;</font>
<br><font size=3D2 face=3D"Arial">Kind regards,</font>
<br><font size=3D3>&nbsp;</font>
<br><font size=3D2 face=3D"Arial"><b>Mike Looijmans</b></font>
<br><font size=3D2 face=3D"Arial">System Expert</font>
<br><font size=3D3>&nbsp;</font>
<br><img src=3Dcid:=5F4=5F0CE7BCD40CE7BA68002235E8C1257FE9 style=3D"border:=
0px solid;"><font size=3D3><br>
</font>
<br>
<table width=3D475 style=3D"border-collapse:collapse;">
<tr height=3D8>
<td width=3D151 style=3D"border-style:solid;border-color:#000000;border-wid=
th:0px 0px 0px 0px;padding:0px 0px;"><font size=3D1 face=3D"Arial"><b>TOPIC
Products</b></font>
<td width=3D22 style=3D"border-style:solid;border-color:#000000;border-widt=
h:0px 0px 0px 0px;padding:0px 0px;"><font size=3D3>&nbsp;</font>
<td width=3D295 style=3D"border-style:solid;border-color:#000000;border-wid=
th:0px 0px 0px 0px;padding:0px 0px;"><font size=3D3>&nbsp;</font>
<td width=3D5 valign=3Dtop style=3D"border-style:solid;border-color:#000000=
;border-width:0px 0px 0px 0px;padding:0px 0px;">
<tr height=3D8>
<td width=3D151 style=3D"border-style:solid;border-color:#000000;border-wid=
th:0px 0px 0px 0px;padding:0px 0px;"><font size=3D1 face=3D"Arial">Materiaa=
lweg
4</font>
<td width=3D22 style=3D"border-style:solid;border-color:#000000;border-widt=
h:0px 0px 0px 0px;padding:0px 0px;"><font size=3D3>&nbsp;</font>
<td width=3D295 style=3D"border-style:solid;border-color:#000000;border-wid=
th:0px 0px 0px 0px;padding:0px 0px;"><font size=3D3>&nbsp;</font>
<td width=3D5 valign=3Dtop style=3D"border-style:solid;border-color:#000000=
;border-width:0px 0px 0px 0px;padding:0px 0px;">
<tr height=3D8>
<td width=3D151 style=3D"border-style:solid;border-color:#000000;border-wid=
th:0px 0px 0px 0px;padding:0px 0px;"><font size=3D1 face=3D"Arial">5681
RJ Best</font>
<td width=3D22 style=3D"border-style:solid;border-color:#000000;border-widt=
h:0px 0px 0px 0px;padding:0px 0px;"><font size=3D1 face=3D"Arial">T:</font>
<td width=3D295 style=3D"border-style:solid;border-color:#000000;border-wid=
th:0px 0px 0px 0px;padding:0px 0px;"><font size=3D1 face=3D"Arial">+31
(0) 499 33 69 69</font>
<td width=3D5 valign=3Dtop style=3D"border-style:solid;border-color:#000000=
;border-width:0px 0px 0px 0px;padding:0px 0px;">
<tr height=3D8>
<td width=3D151 style=3D"border-style:solid;border-color:#000000;border-wid=
th:0px 0px 0px 0px;padding:0px 0px;"><font size=3D1 face=3D"Arial">Postbus
440</font>
<td width=3D22 style=3D"border-style:solid;border-color:#000000;border-widt=
h:0px 0px 0px 0px;padding:0px 0px;"><font size=3D1 face=3D"Arial">E:</font>
<td width=3D295 style=3D"border-style:solid;border-color:#000000;border-wid=
th:0px 0px 0px 0px;padding:0px 0px;"><font size=3D1 face=3D"Arial">mike.loo=
ijmans@topicproducts.com</font>
<td width=3D5 valign=3Dtop style=3D"border-style:solid;border-color:#000000=
;border-width:0px 0px 0px 0px;padding:0px 0px;">
<tr height=3D8>
<td width=3D151 style=3D"border-style:solid;border-color:#000000;border-wid=
th:0px 0px 0px 0px;padding:0px 0px;"><font size=3D1 face=3D"Arial">5680
AK Best</font>
<td width=3D22 style=3D"border-style:solid;border-color:#000000;border-widt=
h:0px 0px 0px 0px;padding:0px 0px;"><font size=3D1 face=3D"Arial">W:</font>
<td width=3D295 style=3D"border-style:solid;border-color:#000000;border-wid=
th:0px 0px 0px 0px;padding:0px 0px;"><a href=3Dhttp://www.topicproducts.com=
/><font size=3D1 color=3Dblue face=3D"Arial"><u>www.topicproducts.com</u></=
font></a>
<td width=3D5 valign=3Dtop style=3D"border-style:solid;border-color:#000000=
;border-width:0px 0px 0px 0px;padding:0px 0px;">
<tr height=3D8>
<td width=3D151 style=3D"border-style:solid;border-color:#000000;border-wid=
th:0px 0px 0px 0px;padding:0px 0px;"><font size=3D1 face=3D"Arial">The
Netherlands</font>
<td width=3D22 style=3D"border-style:solid;border-color:#000000;border-widt=
h:0px 0px 0px 0px;padding:0px 0px;">
<td width=3D295 style=3D"border-style:solid;border-color:#000000;border-wid=
th:0px 0px 0px 0px;padding:0px 0px;">
<td width=3D5 style=3D"border-style:solid;border-color:#000000;border-width=
:0px 0px 0px 0px;padding:0px 0px;"></table>
<br><a href=3Dhttps://www.facebook.com/TopicProducts><img src=3Dcid:=5F2=5F=
0CE747640CE7C188002235E8C1257FE9 style=3D"border:0px solid;"></a><a href=3D=
https://twitter.com/TopicProducts><img src=3Dcid:=5F2=5F0CE74AA80CE7C188002=
235E8C1257FE9 style=3D"border:0px solid;"></a><a href=3D"https://www.linked=
in.com/company/topic-embedded-products"><img src=3Dcid:=5F2=5F0CE74DEC0CE7C=
188002235E8C1257FE9 style=3D"border:0px solid;"></a><font size=3D1 color=3D=
#008000 face=3D"Arial"><br>
Please consider the environment before printing this e-mail</font>
<p><font size=3D3 color=3Dblue><u><br>
</u></font><a href=3D"http://topic.nl/vacancy/topic-zoekt-technische-softwa=
re-engineers/"><font size=3D1 color=3Dblue face=3D"Arial"><u>Topic
zoekt gedreven (embedded) software specialisten!</u></font></a><font size=
=3D3><br>
</font>
<br><font size=3D3>=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; yocto@yoctoproject.org<br>
&gt;&gt; </font><a href=3Dhttps://lists.yoctoproject.org/listinfo/yocto><fo=
nt size=3D3>https://lists.yoctoproject.org/listinfo/yocto</font></a><font s=
ize=3D3><br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
</font><tt><font size=3D2>-- <br>
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br>
yocto mailing list<br>
yocto@yoctoproject.org<br>
</font></tt><a href=3Dhttps://lists.yoctoproject.org/listinfo/yocto><tt><fo=
nt size=3D2>https://lists.yoctoproject.org/listinfo/yocto</font></tt></a><t=
t><font size=3D2><br>
</font></tt>
<br>

--=_alternative 002235E9C1257FE9_=--

--=_related 002235E9C1257FE9_=
Content-Type: image/png
Content-ID: <_4_0CE7BCD40CE7BA68002235E8C1257FE9>
Content-Transfer-Encoding: base64

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
AAAAAElFTkSuQmCC

--=_related 002235E9C1257FE9_=
Content-Type: image/jpeg
Content-ID: <_2_0CE747640CE7C188002235E8C1257FE9>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/4QAiRXhpZgAATU0AKgAAAAgAAQESAAMAAAABAAEAAAAAAAD/
2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcGBwcICQsJCAgKCAcHCg0KCgsMDAwM
BwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwM
DAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCAATABQDASIAAhEBAxEB/8QAGQABAAMBAQAAAAAA
AAAAAAAAAAYHCAUJ/8QAKhAAAQMCBQQBBAMAAAAAAAAAAQIDBAURAAYHCBIJEyExgRQVFkEiMlH/
xAAYAQADAQEAAAAAAAAAAAAAAAAEBgcCBf/EACcRAAEEAQIDCQAAAAAAAAAAAAEAAgMEEQUSIVGx
EzEyQWFxkdHw/9oADAMBAAIRAxEAPwC/91O8yqSNx2cIP5Yts0mpvwwymX2+ylDikhPEnwABaw8f
v3fF25K0qrVF2mTdRs61DU1NScLxhUumsEqitpSotyJCVJJ7R481LuAEEe7485d7GXkSd5OpncSL
O5hmkBQ/skvLHz6I+MbC1M10zs30QsrVT80rwrlQzK7S5cwTj9RIglyW2Y61ey1wSlPE+LAYteoa
bI2jUFXDd7mtJxx4jpzSFXnY6aUyEnAJ7/X9hb72DasP6ybT8p5glzPur0xp1JlBfPuhLq0j+RN1
WAtf92wxB+kZSDE6fuQmi2pHabkp42txtJd8YYlGqVomXJWDyceqa6s0vYt9gpNrHsU0l1Dz3Ir1
YyVTZdVqZLsp8OvNd5fgcilCwnkbC5AuT5Nz5xwHenVow48hpWR4paSsEI+ul2Bv/ndwwwfVv2hA
1okdjHM/axJBFv8ACPhaDyRkik6eZTgUSiQI9MpVNaDUaMwOKGk+/kkkkk3JJJJJOGGGOCSSclGA
DC//2Q==

--=_related 002235E9C1257FE9_=
Content-Type: image/jpeg
Content-ID: <_2_0CE74AA80CE7C188002235E8C1257FE9>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/4QAiRXhpZgAATU0AKgAAAAgAAQESAAMAAAABAAEAAAAAAAD/
2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcGBwcICQsJCAgKCAcHCg0KCgsMDAwM
BwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwM
DAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCAATABQDASIAAhEBAxEB/8QAGQABAAMBAQAAAAAA
AAAAAAAAAAUGBwQJ/8QAJxAAAQIGAgIBBQEAAAAAAAAAAQIDAAQFBgcREiEIMRMjJEGBoaL/xAAY
AQADAQEAAAAAAAAAAAAAAAAFBgcECP/EACYRAAEDAwIFBQAAAAAAAAAAAAECAwQAESEFEhMiMUKR
FEGBsdH/2gAMAwEAAhEDEQA/APUHHk45m3L98qqNyVVEpb76WUsSc0WlBS1rA2dHQSEnQA/kVzK9
g33jSnVWrNXCqdodPWXA8ioAvpY5AJccR1rWwFa3qIfEtabt/MGUach1pqqVydZekkuuJaEz8Trn
NtKlaHIhewCRviQO4u/khX5i4MFXFJzVKatJLkukpebmmlmoqC0/alIBVpfZPH1x763FP4bjUpKW
7bDtFiBgEDIHX3PT5rm/1bciAtbpPETvVcE5IKrA4tbANjatx8Wb9evzB1Fqc2+mcefStPygk8wl
ZSO/1CILwdp5lPGe3WyFJKA6NetfVVCEPUo7SZbgA7j91aNAkyHNNjrWclCb+BXNkvAlo1O83516
isqmJwB55SXXEha1b5HiFAAn30PffvuIGdwHaK2ATR0bSRo/O6Nf6hCNcaW/wk858mhknTIan3Cp
pJ5j2j8rc7SteQtq3ZWQkJcSsnKoCGmkKUAkez+dkkkkk9kmEIQIUTemZtCQkACv/9k=

--=_related 002235E9C1257FE9_=
Content-Type: image/jpeg
Content-ID: <_2_0CE74DEC0CE7C188002235E8C1257FE9>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcG
BwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwM
DAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCAASABQDASIA
AhEBAxEB/8QAGgABAAIDAQAAAAAAAAAAAAAAAAYIBAUHCf/EAC0QAAEDBAIAAwYHAAAAAAAAAAEC
AwQFBgcRABIICSETFSIxQWEjQlFWYpGV/8QAGAEAAgMAAAAAAAAAAAAAAAAABgcDBAX/xAAmEQAB
AwMDAgcAAAAAAAAAAAABAgMRAAQxBSEyQXEGEzNRYaGx/9oADAMBAAIRAxEAPwC0OIs3UHO+GclX
cg3Q9VrbqrURDobSmK1Jfe6hMgrO1Fa1gbB/MNbJO9tfOPMpY0sKtXNW7UqFPotutKfqL3tm3XGG
QCVOhlKitbYHbagCPhPz0d1cwP4n7c8NODcz43ueDXGLlue6YUoMtsNBMJUGY2t1p0OLSpDn4SgB
1PrrZHzHQqz5m9i1bxcZuvzpdfuDJVlItmlRFlkuRpCY6G+7jft+iG+wWeySo/EfT1Omo9pdyh5Y
YRKMjrIhOI95O++KSzPiC1LCPPXC4gjEGVbkEbxCRHzXoV5Uuc4ucvCRFrEByU/DZq02I0p5BRoI
c2eoJJ67USN/rxyA+Q5bMug+XnRhIjuMtSqvPfjLUNJkNFwJDiDobQVJUAfrrjgFqrKEXjqE4Cj+
0wtJun3bJpw9Ug/Qq2ldxnbdy1RUuo2/RKhKUEgvSYLTrhA1odlJJ+g5hN4Us39pWx/lsfb+P2H9
Djjlpj0x2qJzme5qSBpMdhlDaUoQlsAJSNAccccxlcjRG3xFf//Z

--=_related 002235E9C1257FE9_=--
