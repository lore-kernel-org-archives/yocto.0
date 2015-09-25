Return-Path: <allen.curtis@curtisembedded.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5ED7FE00A3B; Fri, 25 Sep 2015 15:05:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [69.89.23.142 listed in list.dnswl.org]
X-Greylist: delayed 396 seconds by postgrey-1.32 at yocto-www;
	Fri, 25 Sep 2015 15:05:34 PDT
Received: from gproxy4-pub.mail.unifiedlayer.com
	(gproxy4-pub.mail.unifiedlayer.com [69.89.23.142])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id A8144E00474
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 15:05:34 -0700 (PDT)
Received: (qmail 26473 invoked by uid 0); 25 Sep 2015 21:58:54 -0000
Received: from unknown (HELO cmgw2) (10.0.90.83)
	by gproxy4.mail.unifiedlayer.com with SMTP; 25 Sep 2015 21:58:54 -0000
Received: from box410.bluehost.com ([69.89.31.210]) by cmgw2 with 
	id MZyZ1r00d4Y0hd901Zyccr; Fri, 25 Sep 2015 15:58:52 -0600
X-Authority-Analysis: v=2.1 cv=Jv9i8qIC c=1 sm=1 tr=0
	a=ETof7DMrXRHAC+dJixH5gQ==:117 a=ETof7DMrXRHAC+dJixH5gQ==:17
	a=cNaOj0WVAAAA:8
	a=f5113yIGAAAA:8 a=3_4UIzzJAAAA:8 a=mHfT8ucao3sA:10 a=o0XNLtqhUCMA:10
	a=ff-B7xzCdYMA:10 a=uQTphaz0aTK8xHYgrckA:9 a=pILNOxqGKmIA:10
	a=qYUWsgJ4AAAA:8
	a=vtqslJOIAAAA:8 a=aYNafN4yObbvN9qD:21 a=_W_S_7VecoQA:10
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=curtisembedded.com; s=default; 
	h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type;
	bh=IE49Ba5zDfU331zsyi0rvMRvJn+gidmfbnc1fwQZT8Y=; 
	b=HAD7CjQgKuy10JwbnSWbyAkIcWYzvjBtfsG8nIkCEIvPnOUierlCHwTEHGh5CwAD1d14xBhXC8xhbXJB7WQsUA1eZI8TKwmu0hizsp6pIvAJvUyJEhuhjVZPlR1UAhas;
Received: from [68.225.237.157] (port=55928 helo=[192.168.0.6])
	by box410.bluehost.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.84) (envelope-from <allen.curtis@curtisembedded.com>)
	id 1ZfY6G-0000Y1-GT; Fri, 25 Sep 2015 12:52:04 -0600
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: Allen Curtis <allen.curtis@curtisembedded.com>
In-Reply-To: <CABcZAN=ZtWwNp=Fv=8ox3KAxaFNdi=qduM8s4fM5wsOqOsmV8A@mail.gmail.com>
Date: Fri, 25 Sep 2015 11:52:01 -0700
Message-Id: <82D5505A-6D71-47BF-B4ED-AD2C117F4924@curtisembedded.com>
References: <5551EDA3-4D20-44A0-BA06-DDC2AEC3B7AC@ac2enterprises.com>
	<CABcZANm5WtVgshp6mBTn08fPrH4+eDTD+uHKr31VQyL=R7dbRQ@mail.gmail.com>
	<3FA71175-E6BE-46FE-9DA4-8284FFB58F49@curtisembedded.com>
	<CABcZAN=ZtWwNp=Fv=8ox3KAxaFNdi=qduM8s4fM5wsOqOsmV8A@mail.gmail.com>
To: Christopher Larson <clarson@kergoth.com>
X-Mailer: Apple Mail (2.1510)
X-Identified-User: {2323:box410.bluehost.com:actwoent:curtisembedded.com}
	{sentby:smtp auth 68.225.237.157 authed with
	allen.curtis@curtisembedded.com}
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: bbappend a "required" bb file
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
X-List-Received-Date: Fri, 25 Sep 2015 22:05:35 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_5DF22D47-A883-4B37-AE80-0C703FCB0352"

--Apple-Mail=_5DF22D47-A883-4B37-AE80-0C703FCB0352
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252

>=20
>=20
> On Fri, Sep 25, 2015 at 10:15 AM, Allen Curtis =
<allen.curtis@curtisembedded.com> wrote:
>> I am working with a BSP that has multiple image recipes.
>>=20
>> foo-hwbringup-image.bb
>> foo-qt5demo-image.bb
>>=20
>> foo-qt5demo-image.bb contains "require foo-hwbringup-image.bb"
>>=20
>> However if I create foo-hwbringup-image.bbappend, it gets ignored.
>>=20
>> What are the rules with appending included recipes?
>>=20
>> bbappends do not append arbitrary files, only recipes (and in this =
case, the inclusion treats them as an arbitrary file). They do not apply =
to anything included or required, only the recipe itself. So you'll need =
to bbappend every recipe that includes foo-hwbringup-image.bb in this =
case.
>=20
> This is unfortunate since foo-hwbringup-image.bb is also a valid =
recipe. It just doesn't contain the graphics support.
>=20
> Is there a better way to add your custom components to "core-image" I =
guess=85..
>=20
> You could always define custom features for use in IMAGE_FEATURES and =
add them to your images via EXTRA_IMAGE_FEATURES in local.conf, or =
bbappend one of the core images.

How is bbappend a core image different from bbappend =
foo-hwbringup-image?

If you follow the original post one more generation, =
foo-hwbringup-image.bb "inherit core-image"




--Apple-Mail=_5DF22D47-A883-4B37-AE80-0C703FCB0352
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><div><blockquote type=3D"cite"><div dir=3D"ltr"><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br><div =
class=3D"gmail_quote">On Fri, Sep 25, 2015 at 10:15 AM, Allen Curtis =
<span dir=3D"ltr">&lt;<a href=3D"mailto:allen.curtis@curtisembedded.com" =
target=3D"_blank">allen.curtis@curtisembedded.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><span =
class=3D""><blockquote type=3D"cite"><div dir=3D"ltr"><div =
class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote =
style=3D"margin:0px 0px 0px =
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex" class=3D"gmail_quote"><div =
style=3D"overflow:hidden">I am working with a BSP that has multiple =
image recipes.<br>
<br>
<a href=3D"http://foo-hwbringup-image.bb/" rel=3D"noreferrer" =
target=3D"_blank">foo-hwbringup-image.bb</a><br>
<a href=3D"http://foo-qt5demo-image.bb/" rel=3D"noreferrer" =
target=3D"_blank">foo-qt5demo-image.bb</a><br>
<br>
<a href=3D"http://foo-qt5demo-image.bb/" rel=3D"noreferrer" =
target=3D"_blank">foo-qt5demo-image.bb</a> contains "require <a =
href=3D"http://foo-hwbringup-image.bb/" rel=3D"noreferrer" =
target=3D"_blank">foo-hwbringup-image.bb</a>"<br>
<br>
However if I create foo-hwbringup-image.bbappend, it gets ignored.<br>
<br>
What are the rules with appending included =
recipes?</div></blockquote></div><br>bbappends do not append arbitrary =
files, only recipes (and in this case, the inclusion treats them as an =
arbitrary file). They do not apply to anything included or required, =
only the recipe itself. So you'll need to bbappend every recipe that =
includes <a href=3D"http://foo-hwbringup-image.bb/" =
target=3D"_blank">foo-hwbringup-image.bb</a> in this =
case.<br></div></div></blockquote><br></span><div>This is unfortunate =
since <a href=3D"http://foo-hwbringup-image.bb/" =
target=3D"_blank">foo-hwbringup-image.bb</a> is also a valid recipe. It =
just doesn't contain the graphics support.</div><div><br></div><div>Is =
there a better way to add your custom components to "core-image" I =
guess=85..</div><div></div></blockquote></div><br>You could always =
define custom features for use in IMAGE_FEATURES and add them to your =
images via EXTRA_IMAGE_FEATURES in local.conf, or bbappend one of the =
core images.<br></div></div></blockquote><br></div><div>How is bbappend =
a core image different from bbappend =
foo-hwbringup-image?</div><div><br></div><div>If you follow the original =
post one more generation, foo-hwbringup-image.bb "inherit =
core-image"</div><div><br></div><div><br></div><br></body></html>=

--Apple-Mail=_5DF22D47-A883-4B37-AE80-0C703FCB0352--
