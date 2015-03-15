Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66223E0087C; Sun, 15 Mar 2015 04:48:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4478 seconds by postgrey-1.32 at yocto-www;
	Sun, 15 Mar 2015 04:48:06 PDT
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54B60E0052B
	for <yocto@yoctoproject.org>; Sun, 15 Mar 2015 04:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type;
	bh=uaJdXGxC4ePOkm5EVEPGJXfs0rs1T/K5wzoGX0qSLCQ=; 
	b=O6BVWbJ+u7BwrLJVfNSlQUETMsSU6XsKqRw6mS8v/OHINDBHHs5t67MAOwhEG2n2kNZZlDbKRB2MkyybJ6F3dAnQE4R73c+vBcukjudxatZaQ3bDiSJr/e/qrW03IsUaZXqp44PCLISe8LVgfXjapurpZpLIa5QFiVPcNi+8siU=;
Received: from durham.keylevel.com ([88.97.63.243]:3652
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.85) (envelope-from <opensource@keylevel.com>)
	id 1YX5rC-001g6m-B1; Sun, 15 Mar 2015 10:33:24 +0000
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <F83C9D2F-6BCA-48A0-8C71-7DC701E57C50@inventum.net>
Date: Sun, 15 Mar 2015 10:33:18 +0000
Message-Id: <241DCB24-603B-4813-AEEE-55682D5CA603@keylevel.com>
References: <37E841B8-5482-4E95-8A2E-08140957E3BF@inventum.net>
	<1947418.ggldqr5zsU@peggleto-mobl5.ger.corp.intel.com>
	<F83C9D2F-6BCA-48A0-8C71-7DC701E57C50@inventum.net>
To: Padam Jeet Singh <padam.singh@inventum.net>
X-Mailer: Apple Mail (2.2070.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: Automatically include all recipes/packages in a custom layer
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
X-List-Received-Date: Sun, 15 Mar 2015 11:48:10 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1532BD4B-A055-4F64-8088-8A93BAE7E0AB"

--Apple-Mail=_1532BD4B-A055-4F64-8088-8A93BAE7E0AB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On 14 Mar 2015, at 11:42, Padam Jeet Singh <padam.singh@inventum.net> =
wrote:
>=20
>=20
>> On 14-Mar-2015, at 5:05 pm, Paul Eggleton =
<paul.eggleton@linux.intel.com <mailto:paul.eggleton@linux.intel.com>> =
wrote:
>>=20
>> On Saturday 14 March 2015 12:51:31 Padam Jeet Singh wrote:
>>> I am trying to build a custom layer on top of =
core-image-full-cmdline.
>>> Basically I did this:
>>>=20
>>> 1. Created a new general layer using the yocto-layer command. This =
also
>>> generated a simple hello world recipe. 2. Added that layer in the
>>> conf/bblayers.conf BBLAYERS variable.
>>>=20
>>> Then I do a bitbake -v core-image-full-cmdline, and I don=E2=80=99t =
see
>>> /usr/bin/helloworld in the final rootfs.
>>>=20
>>> Then I edit the conf/local.conf and add the following:
>>>=20
>>> IMAGE_INSTALL_append =3D " example=E2=80=9D
>>>=20
>>> and then I can see the helloworld in the rootfs.
>>>=20
>>> Since I will be adding close to 50 recipes in this layer, isn=E2=80=99=
t there an
>>> option where all recipes in that layer are included by default? Even =
if I
>>> have to declare each recipe to be included, is there a place where I =
can
>>> define those in my own layer configuration (layer.conf) rather than
>>> local.conf?
>>=20
>> Firstly, I'd recommend you create your own custom image recipe(s) =
rather than=20
>> adding packages via local.conf.
>=20
> This is exactly what I am trying to avoid - it=E2=80=99s =
unmaintainable.

Why do you think it is unmaintainable? Doesn't it just need to inherit =
core-image-fill-cmdline and add in the packages you need.

> Secondly, the way to handle bringing in a=20
>> large number of packages as a unit is to create a packagegroup recipe =
within=20
>> your custom layer to pull in all the packages you want installed, and =
then you=20
>> just need to add that packagegroup to your image.
>=20
> This sounds good. Would I be referring to this group via the =
IMAGE_INSTALL_append =3D =E2=80=9C mygroup=E2=80=9D ?
>=20
>>=20
>> Cheers,
>> Paul
>>=20
>> --=20
>>=20
>> Paul Eggleton
>> Intel Open Source Technology Centre
>=20
> Padam J. Singh | VP Engg. | Inventum Technologies Private Limited
> www.inventum.net <http://www.inventum.net/>
> +91.9810146640
> =20
> Address:
> C-70, Phase II Extension,
> Noida 201305, UP,
> India
> =20
> Tel     : +91.120.4647000
> =20
> This email and any files transmitted with it are confidential and =
intended solely for the use of the individual or entity to whom they are =
addressed. If you have received this email in error please notify the =
system manager. This message contains confidential information and is =
intended only for the individual named. If you are not the named =
addressee you should not disseminate, distribute or copy this e-mail. =
Please notify the sender immediately by e-mail if you have received this =
e-mail by mistake and delete this e-mail from your system. If you are =
not the intended recipient you are notified that disclosing, copying, =
distributing or taking any action in reliance on the contents of this =
information is strictly prohibited. No employee or agent is authorized =
to conclude any binding agreement on behalf of [Inventum Technologies =
Private Limited] with another party by email without express written =
confirmation by a whole-time Director of the Company who has been =
authorized vide a valid board resolution to the effect. Our company =
accepts no liability for the content of this email, or for the =
consequences of any actions taken on the basis of the information =
provided, unless that information is subsequently confirmed in writing. =
If you are not the intended recipient you are notified that disclosing, =
copying, distributing or taking any action in reliance on the contents =
of this information is strictly prohibited. Any views or opinions =
presented in this email are solely those of the author and do not =
necessarily represent those of the company. Employees of [Inventum =
Technologies Private Limited] are expressly required not to make =
defamatory statements and not to infringe or authorize any infringement =
of copyright or any other legal right by email communications. Any such =
communication is contrary to company policy and outside the scope of the =
employment of the individual concerned. The company will not accept any =
liability in respect of such communication, and the employee responsible =
will be personally liable for any damages or other liability arising.
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


--Apple-Mail=_1532BD4B-A055-4F64-8088-8A93BAE7E0AB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On 14 Mar 2015, at 11:42, Padam Jeet Singh &lt;<a =
href=3D"mailto:padam.singh@inventum.net" =
class=3D"">padam.singh@inventum.net</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><meta =
http-equiv=3D"Content-Type" content=3D"text/html charset=3Dutf-8" =
class=3D""><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space;" class=3D""><br =
class=3D""><div class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On 14-Mar-2015, at 5:05 pm, Paul Eggleton &lt;<a =
href=3D"mailto:paul.eggleton@linux.intel.com" =
class=3D"">paul.eggleton@linux.intel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D"">On Saturday 14 March =
2015 12:51:31 Padam Jeet Singh wrote:<br class=3D""><blockquote =
type=3D"cite" class=3D"">I am trying to build a custom layer on top of =
core-image-full-cmdline.<br class=3D"">Basically I did this:<br =
class=3D""><br class=3D"">1. Created a new general layer using the =
yocto-layer command. This also<br class=3D"">generated a simple hello =
world recipe. 2. Added that layer in the<br class=3D"">conf/bblayers.conf =
BBLAYERS variable.<br class=3D""><br class=3D"">Then I do a bitbake -v =
core-image-full-cmdline, and I don=E2=80=99t see<br =
class=3D"">/usr/bin/helloworld in the final rootfs.<br class=3D""><br =
class=3D"">Then I edit the conf/local.conf and add the following:<br =
class=3D""><br class=3D"">IMAGE_INSTALL_append =3D " example=E2=80=9D<br =
class=3D""><br class=3D"">and then I can see the helloworld in the =
rootfs.<br class=3D""><br class=3D"">Since I will be adding close to 50 =
recipes in this layer, isn=E2=80=99t there an<br class=3D"">option where =
all recipes in that layer are included by default? Even if I<br =
class=3D"">have to declare each recipe to be included, is there a place =
where I can<br class=3D"">define those in my own layer configuration =
(layer.conf) rather than<br class=3D"">local.conf?<br =
class=3D""></blockquote><br class=3D"">Firstly, I'd recommend you create =
your own custom image recipe(s) rather than <br class=3D"">adding =
packages via local.conf. </div></blockquote><div class=3D""><br =
class=3D""></div><div class=3D"">This is exactly what I am trying to =
avoid - it=E2=80=99s =
unmaintainable.</div></div></div></div></blockquote><div><br =
class=3D""></div><div>Why do you think it is unmaintainable? Doesn't it =
just need to inherit core-image-fill-cmdline and add in the packages you =
need.</div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space;" class=3D""><div =
class=3D"">Secondly, the way to handle bringing in a&nbsp;<br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">large =
number of packages as a unit is to create a packagegroup recipe within =
<br class=3D"">your custom layer to pull in all the packages you want =
installed, and then you <br class=3D"">just need to add that =
packagegroup to your image.<br class=3D""></div></blockquote><div =
class=3D""><br class=3D""></div><div class=3D"">This sounds good. Would =
I be referring to this group via the IMAGE_INSTALL_append =3D =E2=80=9C =
mygroup=E2=80=9D ?</div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D""><br class=3D"">Cheers,<br class=3D"">Paul<br =
class=3D""><br class=3D"">-- <br class=3D""><br class=3D"">Paul =
Eggleton<br class=3D"">Intel Open Source Technology Centre<br =
class=3D""></div></blockquote></div><br class=3D""><div =
apple-content-edited=3D"true" class=3D"">
<div style=3D"letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;" class=3D""><div style=3D"orphans: 2; widows: 2; =
margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New =
Roman', serif;" class=3D""><span class=3D"Apple-style-span" =
style=3D"border-collapse: collapse;"><b class=3D""><span =
style=3D"font-size: 13.5pt; font-family: Arial, sans-serif;" =
class=3D"">Padam J. Singh |&nbsp;VP Engg. |&nbsp;</span></b><span =
class=3D"apple-style-span"><span style=3D"font-size: 13.5pt; =
font-family: Arial, sans-serif;" class=3D"">Inventum Technologies =
Private Limited</span></span></span></div><div style=3D"orphans: 2; =
widows: 2; margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: =
'Times New Roman', serif; border-collapse: collapse;" class=3D""><span =
style=3D"font-size: 13.5pt; font-family: Arial, sans-serif;" class=3D""><a=
 href=3D"http://www.inventum.net/" style=3D"color: blue;" =
class=3D"">www.inventum.net</a></span><span style=3D"font-size: 13.5pt; =
font-family: 'Lucida Grande', serif;" class=3D""><o:p =
class=3D""></o:p></span></div><div style=3D"orphans: 2; widows: 2; =
margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New =
Roman', serif; border-collapse: collapse;" class=3D""><span =
style=3D"font-size: 13.5pt; font-family: Arial, sans-serif;" =
class=3D"">+91.9810146640</span><span style=3D"font-size: 13.5pt; =
font-family: 'Lucida Grande', serif;" class=3D""><o:p =
class=3D""></o:p></span></div><div style=3D"orphans: 2; widows: 2; =
margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New =
Roman', serif; border-collapse: collapse;" class=3D""><span =
style=3D"font-size: 13.5pt; font-family: 'Lucida Grande', serif;" =
class=3D"">&nbsp;</span></div><div style=3D"orphans: 2; widows: 2; =
margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New =
Roman', serif; border-collapse: collapse;" class=3D""><span =
class=3D"apple-style-span"><span style=3D"font-size: 7.5pt; font-family: =
Arial, sans-serif;" class=3D"">Address:</span></span><span =
style=3D"font-size: 13.5pt; font-family: 'Lucida Grande', serif;" =
class=3D""><o:p class=3D""></o:p></span></div><div style=3D"orphans: 2; =
widows: 2; margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: =
'Times New Roman', serif; border-collapse: collapse;" class=3D""><span =
class=3D"apple-style-span"><span style=3D"font-size: 7.5pt; font-family: =
Arial, sans-serif;" class=3D"">C-70, Phase II =
Extension,</span></span><span style=3D"font-size: 13.5pt; font-family: =
'Lucida Grande', serif;" class=3D""><o:p =
class=3D""></o:p></span></div><div style=3D"orphans: 2; widows: 2; =
margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New =
Roman', serif; border-collapse: collapse;" class=3D""><span =
class=3D"apple-style-span"><span style=3D"font-size: 7.5pt; font-family: =
Arial, sans-serif;" class=3D"">Noida 201305, UP,</span></span><span =
style=3D"font-size: 13.5pt; font-family: 'Lucida Grande', serif;" =
class=3D""><o:p class=3D""></o:p></span></div><div style=3D"orphans: 2; =
widows: 2; margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: =
'Times New Roman', serif; border-collapse: collapse;" class=3D""><span =
class=3D"apple-style-span"><span style=3D"font-size: 7.5pt; font-family: =
Arial, sans-serif;" class=3D"">India</span></span><span =
style=3D"font-size: 13.5pt; font-family: 'Lucida Grande', serif;" =
class=3D""><o:p class=3D""></o:p></span></div><div style=3D"orphans: 2; =
widows: 2; margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: =
'Times New Roman', serif; border-collapse: collapse;" class=3D""><span =
style=3D"font-size: 13.5pt; font-family: 'Lucida Grande', serif;" =
class=3D"">&nbsp;</span></div><div style=3D"orphans: 2; widows: 2; =
margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New =
Roman', serif; border-collapse: collapse;" class=3D""><span =
class=3D"apple-style-span"><span style=3D"font-size: 7.5pt; font-family: =
Arial, sans-serif;" class=3D"">Tel &nbsp; &nbsp; : =
+91.120.4647000</span></span></div><div style=3D"orphans: 2; widows: 2; =
margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New =
Roman', serif; border-collapse: collapse;" class=3D""><span =
style=3D"font-size: 13.5pt; font-family: 'Lucida Grande', serif;" =
class=3D"">&nbsp;</span></div><div class=3D"MsoNormal" align=3D"center" =
style=3D"orphans: 2; widows: 2; margin: 0in 0in 0.0001pt; font-size: =
12pt; font-family: 'Times New Roman', serif; text-align: center; =
border-collapse: collapse;"><span style=3D"font-size: 13.5pt; =
font-family: 'Lucida Grande', serif;" class=3D""><hr size=3D"2" =
width=3D"100%" align=3D"center" class=3D""></span></div><div =
style=3D"orphans: 2; widows: 2; margin: 0in 0in 0.0001pt; font-size: =
12pt; font-family: 'Times New Roman', serif; border-collapse: collapse;" =
class=3D""><span class=3D"apple-style-span"><span style=3D"font-size: =
7pt; font-family: 'Arial Narrow', sans-serif; color: rgb(146, 146, =
146);" class=3D"">This email and any files transmitted with it are =
confidential and intended solely for the use of the individual or entity =
to whom they are addressed. If you have received this email in error =
please notify the system manager. This message contains confidential =
information and is intended only for the individual named. If you are =
not the named addressee you should not disseminate, distribute or copy =
this e-mail. Please notify the sender immediately by e-mail if you have =
received this e-mail by mistake and delete this e-mail from your system. =
If you are not the intended recipient you are notified that disclosing, =
copying, distributing or taking any action in reliance on the contents =
of this information is strictly prohibited. No employee or agent is =
authorized to conclude any binding agreement on behalf of [Inventum =
Technologies Private Limited] with another party by email without =
express written confirmation by a whole-time Director of the Company who =
has been authorized vide a valid board resolution to the effect. Our =
company accepts no liability for the content of this email, or for the =
consequences of any actions taken on the basis of the information =
provided, unless that information is subsequently confirmed in writing. =
If you are not the intended recipient you are notified that disclosing, =
copying, distributing or taking any action in reliance on the contents =
of this information is strictly prohibited. Any views or opinions =
presented in this email are solely those of the author and do not =
necessarily represent those of the company. Employees of [Inventum =
Technologies Private Limited] are expressly required not to make =
defamatory statements and not to infringe or authorize any infringement =
of copyright or any other legal right by email communications. Any such =
communication is contrary to company policy and outside the scope of the =
employment of the individual concerned. The company will not accept any =
liability in respect of such communication, and the employee responsible =
will be personally liable for any damages or other liability =
arising.</span></span></div></div>
</div>
<br class=3D""></div>-- <br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""><div =
apple-content-edited=3D"true" class=3D"">
<div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: =
auto; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><span class=3D"Apple-style-span" style=3D"border-collapse: =
separate; color: rgb(0, 0, 0); font-family: Helvetica; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; line-height: normal; orphans: 2; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
border-spacing: 0px; -webkit-text-decorations-in-effect: none; =
-webkit-text-stroke-width: 0px;"><div style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div class=3D"">--</div><div class=3D""><br =
class=3D""></div><div class=3D"">Chris Tapp</div><div class=3D""><a =
href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a></div><div class=3D""><a =
href=3D"http://www.keylevel.com" class=3D"">www.keylevel.com</a></div><div=
 class=3D""><br class=3D""></div><div class=3D"">----</div><div =
class=3D"">You can tell you're getting older when your car insurance =
gets real cheap!</div></div></span></div></div></div></div>
</div>
<br class=3D""></body></html>=

--Apple-Mail=_1532BD4B-A055-4F64-8088-8A93BAE7E0AB--
