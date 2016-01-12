Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4D11E00A7D; Tue, 12 Jan 2016 01:37:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0070]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.32 listed in list.dnswl.org]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 Jan 2016 01:37:13 PST
Received: from DUB004-OMC3S23.hotmail.com (dub004-omc3s23.hotmail.com
	[157.55.2.32])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22606E008A5
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 01:37:12 -0800 (PST)
Received: from DUB130-W82 ([157.55.2.9]) by DUB004-OMC3S23.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Tue, 12 Jan 2016 01:36:10 -0800
X-TMN: [gaNXwDZGraiLi8qfQPYA9jgp2xpO/244]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W826C28E67F7AA9DF278329DACA0@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 12 Jan 2016 09:36:09 +0000
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 12 Jan 2016 09:36:10.0318 (UTC)
	FILETIME=[AB8F66E0:01D14D1C]
Subject: Sharing a source repository
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
X-List-Received-Date: Tue, 12 Jan 2016 09:37:16 -0000
Content-Type: multipart/alternative;
	boundary="_c17dfe9a-01fe-4a40-b501-0b94293a1d37_"

--_c17dfe9a-01fe-4a40-b501-0b94293a1d37_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi=2C
I have a source (git) repository that can build a number of targets that co=
uld usefully be distributed across a number of recipes to be applied in dif=
ferent circumstances.  Is there a preferred method to allow multiple recipe=
s to reference the same source without it being unpacked etc separately for=
 each recipe (I've not seen evidence of any optimisation for this by defaul=
t?)
To some extent this situation can be accommodated by producing multiple pac=
kages from one recipe.  This isn't great=2C or modular but might be mitigat=
ed a bit with includes etc.
I could move specific source to specific recipe folders and version control=
 it with the meta data but that would place it outside the original reposit=
ory and break the meta data separation.
The most promising choice so far is the "subpath" option to the git fetcher=
.  This would appear to let me pick out portions of the repository into dif=
ferent recipes that could then be rdepended upon (there is one 'project' wi=
thin the repository that is several GB).  (There are also git sub-projects =
but I'm not using that.)
Would using "subpath" be the preferred method for my case?
Or is there an idiomatic way to pull in a repository in one recipe and then=
 reference that from other recipes?  I can think of something that would wo=
rk but would probably be breaking the spirit (eg sym-linking the git direct=
ory somewhere commonly accessible to the other recipes).  This would also h=
ave the disadvantage of pulling the whole repository in even only small par=
t was actually required.
Regards=2CChris
 		 	   		  =

--_c17dfe9a-01fe-4a40-b501-0b94293a1d37_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>Hi=2C<div><br></div><div>I have =
a source (git) repository that can build a number of targets that could use=
fully be distributed across a number of recipes to be applied in different =
circumstances. &nbsp=3B<span style=3D"font-size: 12pt=3B">Is there a prefer=
red method to allow multiple recipes to reference the same source without i=
t being unpacked etc separately for each recipe (I've not seen evidence of =
any optimisation for this by default?)</span></div><div><br></div><div><spa=
n style=3D"font-size: 12pt=3B">To some extent this situation can be accommo=
dated by producing multiple packages from one recipe. &nbsp=3BThis isn't gr=
eat=2C or modular but might be mitigated a bit with includes etc.</span></d=
iv><div><br></div><div><span style=3D"font-size: 12pt=3B">I could move spec=
ific source to specific recipe folders and version control it with the meta=
 data but that would place it outside the original repository and break the=
 meta data separation.</span></div><div><br></div><div>The most promising c=
hoice so far is the "subpath" option to the git fetcher. &nbsp=3BThis would=
 appear to let me pick out portions of the repository into different recipe=
s that could then be rdepended upon (there is one 'project' within the repo=
sitory that is several GB). &nbsp=3B(There are also git sub-projects but I'=
m not using that.)</div><div><br></div><div>Would using "subpath" be the pr=
eferred method for my case?</div><div><br></div><div>Or is there an idiomat=
ic way to pull in a repository in one recipe and then reference that from o=
ther recipes? &nbsp=3BI can think of something that would work but would pr=
obably be breaking the spirit (eg sym-linking the git directory somewhere c=
ommonly accessible to the other recipes). &nbsp=3BThis would also have the =
disadvantage of pulling the whole repository in even only small part was ac=
tually required.</div><div><br></div><div>Regards=2C</div><div>Chris</div><=
div><br></div> 		 	   		  </div></body>
</html>=

--_c17dfe9a-01fe-4a40-b501-0b94293a1d37_--
