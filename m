Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF1C0E00BAE; Mon, 26 May 2014 03:27:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qc0-f182.google.com (unknown [209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB2BCE00BAE
	for <yocto@yoctoproject.org>; Mon, 26 May 2014 03:27:53 -0700 (PDT)
Received: by mail-qc0-f182.google.com with SMTP id e16so11854029qcx.27
	for <yocto@yoctoproject.org>; Mon, 26 May 2014 03:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=qJY0avqk9cJfBCbeF2fPypfwDQ0iwCqAfHwwIKZ/l2U=;
	b=S1/HoYUwi/HPpUs1DOAK83xm00hbW5xIgz6W62rfYOKU02aF6aDzesewtefnY0wYJs
	NYjcBpIqRuy5N70lVKEqB6Z1M8TakJ+R0O2GREkhmkgk2jbsT1vNONgNExkzV2Egyukc
	afKJYdyGTTSjwI67DxAQ1kx4LwC38q2o+6DdY2uG+ImVF2RzcEnz85ETVls7zwoBZ7tk
	/XEo7WMtWdKCU4YJr2xFzOIWCfV/N1zMZrjuvkZUkXccRJdOYXXcY4Y28zqehlrhwJVH
	OvkefyJYlDn08OmImkYKY3oDGapeiYydQoegYIvp89mVZwnV27B6LZu+yijYanqhrypC
	DmNQ==
X-Received: by 10.224.37.130 with SMTP id x2mr31676421qad.36.1401100073283;
	Mon, 26 May 2014 03:27:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.112 with HTTP; Mon, 26 May 2014 03:27:33 -0700 (PDT)
In-Reply-To: <CAAA4K6LsLF+fJRoAx_z01JW8QTutC2SEC2HdZw_G9Xz94CUz7w@mail.gmail.com>
References: <CAMCfZKHhg9NzCr-DMyX2PAo4qzSYmgiiwwzrukit0T1u+G6LcQ@mail.gmail.com>
	<CAAA4K6LsLF+fJRoAx_z01JW8QTutC2SEC2HdZw_G9Xz94CUz7w@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Mon, 26 May 2014 07:27:33 -0300
Message-ID: <CAMCfZKGSy7W-Z5uvH0WJF2CGJpJso0xBpyEhsjjnp7sqki4mQg@mail.gmail.com>
To: Jegan Chandru <pcjegan@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Setting default system python version
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
X-List-Received-Date: Mon, 26 May 2014 10:27:56 -0000
Content-Type: multipart/alternative; boundary=001a11c2b28229b68904fa4b0842

--001a11c2b28229b68904fa4b0842
Content-Type: text/plain; charset=ISO-8859-1

Jegan,

On Mon, May 26, 2014 at 3:06 AM, Jegan Chandru <pcjegan@gmail.com> wrote:

> There is variable called PREFERRED_VERSION_pkgname ?= "version" where you
> can set the desired version of any packages available.(if thats what you
> are looking for) Try adding it in your image recipe or conf file. Also once
> added, you can check by executing 'bitbake -s' and see preferred version
> tab.



Actually I don't think that it's going to work for python3, since
python(2.7) and python3 are separate recipes that does not provide the same
package (python). They provide two different packages: python and python3,
respectively.
And I believe that PREFERRED_VERSION just have effects on local.conf,
machine.conf and distro.conf, not on image recipes.

Maybe using update-alternatives class can help me to achieve this:
http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#ref-classes-update-alternatives<http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/update-alternatives.bbclass>



Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c2b28229b68904fa4b0842
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Jegan,</div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">On Mon, May 26, 2014 at 3:06 AM, Jeg=
an Chandru <span dir=3D"ltr">&lt;<a href=3D"mailto:pcjegan@gmail.com" targe=
t=3D"_blank">pcjegan@gmail.com</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">There is variable called PREFERRED_VERSION_pkgname ?=3D &q=
uot;version&quot; where you can set the desired version of any packages ava=
ilable.(if thats what you are looking for) Try adding it in your image reci=
pe or conf file. Also once added, you can check by executing &#39;bitbake -=
s&#39; and see preferred version tab.</blockquote>


</div><br><br>Actually I don&#39;t think that it&#39;s going to work for py=
thon3, since python(2.7) and python3 are separate recipes that does not pro=
vide the same package (python). They provide two different packages: python=
 and python3, respectively.</div>


<div class=3D"gmail_extra">And I believe that PREFERRED_VERSION just have e=
ffects on local.conf, machine.conf and distro.conf, not on image recipes.</=
div><div class=3D"gmail_extra"><br>Maybe using update-alternatives class ca=
n help me to achieve this:</div>

<div class=3D"gmail_extra"><a href=3D"http://git.yoctoproject.org/cgit/cgit=
.cgi/poky/tree/meta/classes/update-alternatives.bbclass">http://www.yoctopr=
oject.org/docs/current/mega-manual/mega-manual.html#ref-classes-update-alte=
rnatives</a><br>

</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br><=
/div><div class=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"ltr"><di=
v>
Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administrador=
 do Embarcados<br><a href=3D"http://www.embarcados.com.br/?utm_source=3Dass=
inatura_diego&amp;utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email=
%20Diego" target=3D"_blank">www.embarcados.com.br</a><br>


<br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--001a11c2b28229b68904fa4b0842--
