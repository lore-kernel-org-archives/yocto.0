Return-Path: <peachj@lexmark.com>
Received: from exprod8og109.obsmtp.com (exprod8og109.obsmtp.com [64.18.3.98])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 28E92E00515
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 13:01:45 -0800 (PST)
Received: from mail-vb0-f72.google.com ([209.85.212.72]) (using TLSv1) by
	exprod8ob109.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUTkAONqk+SXbPC2axNfHJhgtL0x8HATQ@postini.com;
	Thu, 07 Mar 2013 13:01:45 PST
Received: by mail-vb0-f72.google.com with SMTP id ft2so873477vbb.7
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 13:01:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-received:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type:x-gm-message-state;
	bh=yuTcfaU88l8WeiUn5GkOlKLq8tFx950xRTyN4q9Bm8E=;
	b=DiKlxaSVFWpqBobWRsSLb3fslAT9rz92Ui5J43ErvH0wBDiFUVF4euwekICU0he+E2
	impOpdfw69TKsFHQkU7mARfQYjAWXxP6x/fVoTznn+GfRsRh59T1iy9Ia5+BSYsSjkQH
	9G+XydoqDnTbM+DBGxReryHij4V+6+QvvvDhaoVPI6L1ZgYaLUQ15SSwcOfDrrrtCGUT
	Sy0IuweIj7fwhg7G/zknpXXfVCKHkvgeFUkua4R+pp+mK9LtskqpAQFUR75nhBZO2lqy
	N1vIusecjaJY8wHnoe9APCXIqtZYO9FudQA4Kofiki1rKEateYQqqAJQlew22tt8+wMn
	lcTA==
X-Received: by 10.224.117.66 with SMTP id p2mr382409qaq.45.1362690104078;
	Thu, 07 Mar 2013 13:01:44 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.224.117.66 with SMTP id p2mr382397qaq.45.1362690103932; Thu,
	07 Mar 2013 13:01:43 -0800 (PST)
Received: by 10.49.47.112 with HTTP; Thu, 7 Mar 2013 13:01:43 -0800 (PST)
In-Reply-To: <5138EDDC.70403@gmail.com>
References: <CAFyqS9q2BimC1TeDGj5r5WZQCcG1z+MA1tdbrB5X8yLqxCheTA@mail.gmail.com>
	<CAFyqS9r=myEwXm6tv4cTFVSPUi4fG3eAvmZ0oqKMBDFmV4wBZw@mail.gmail.com>
	<CA+QkY1Bbstb5N=8fC-LSfS6c1xVaW39+rkLHcJtHT-Fonba+vQ@mail.gmail.com>
	<5138EDDC.70403@gmail.com>
Date: Thu, 7 Mar 2013 16:01:43 -0500
Message-ID: <CA+QkY1CkQmPZQmpVCcCOsA9cCvnS4YjdqWywdtAikbnO8KU6eA@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: Hans Beckerus <hans.beckerus@gmail.com>
X-Gm-Message-State: ALoCoQnxHqerS1KOQ63pQSpff9v97dCQLlNwf3nFml0KO2F/cfjDLaVsMz/uoBZliyTQGGUEIdq+YcLPv68QPeZ1yrPXloLXx9muyvddBk3bHh1O3pdcTBpFbmcI65UtmU5hyp7KmtR2I4BOe0LrxGQNKOd1A8s5jw==
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Problem with applying a patch using default -pnum
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
X-List-Received-Date: Thu, 07 Mar 2013 21:01:45 -0000
Content-Type: multipart/alternative; boundary=20cf3074b47295870c04d75c039d

--20cf3074b47295870c04d75c039d
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Mar 7, 2013 at 2:43 PM, Hans Beckerus <hans.beckerus@gmail.com>wrote:

>  On 2013-03-07 8:11, Jerrod Peach wrote:
>
> Hans,
>
>  Are you sure you're seeing the patch system use $WORKDIR instead of $S
> as the root for patching?  I've had to do a lot of patching in our own
> layers recently and I've always seen $S used as the root for the patch.
>  Are you explicitly setting S = "${WORKDIR}/git"?  That's what we do for
> our git recipes.  That's how you get the system to recognize the source
> somewhere other than just $WORKDIR.
>
>  As for specifying a different -pnum, you absolutely can do that like so:
>
>  *SRC_URI += "file://my-change.patch;striplevel=X"*
>
>  X is the pnum that you want.  Its default value is 1.
>
>  You may also find this page useful -- it contains all sorts of hints for
> setting up your recipes in a Yocto-standard way:
>
>  https://wiki.yoctoproject.org/wiki/Recipe_&_Patch_Style_Guide
>
>  That's where I learned about striplevel and the preference for it over
> the deprecated pnum parameter.
>
>  Kind regards,
>
>  Jerrod
>
>
>   Hi Jarod. Thanks, the pointer you gave will most certainly be of great
> aid. I will try the striplevel approach
> instead of writing my own do_patch() override.
> Regarding how certain I am that the root folder is ${WORKDIR} when
> patching, not at all ;)
> In my do_patch() function is simply did `pwd` and it was not set to ${S}
> as I set it to.
> That does not mean that the built-in patch system is using ${WORKDIR}, I
> am aware of that.
> Things here is, even though my patch is placed in ${W} and I set ${S} to
> eg. ${W}/git/some/folder,
> why would it not work? In another package I set ${S} to ${WORKDIR}/git and
> it works
> just fine. I can not understand why setting ${S} to something else breaks
> the logic?
> It's not that bitbake can not find the patch file, it definitely does
> that, but the -pnum seems to get
> messed up. But maybe that is the whole point of having the striplevel=X in
> the first place.
>
> Hans
>
>
pnum/striplevel's purpose is to strip off the leading paths from a patch
file.  If you're having trouble understanding how that works, this link
might help:

http://drupal.org/patch/apply#comment-239397

Changing $S to a different depth and having do_patch() fail is certainly
expected behavior if you don't change the value of striplevel.  Does that
answer your question?

--20cf3074b47295870c04d75c039d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Thu, Mar 7, 2013 at 2:43 PM, Hans Beckerus <span dir=3D"ltr">&lt=
;<a href=3D"mailto:hans.beckerus@gmail.com" target=3D"_blank">hans.beckerus=
@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF"><div class=3D"im">
    <div>On 2013-03-07 8:11, Jerrod Peach wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hans,
        <div><br>
        </div>
        <div>Are you sure you&#39;re seeing the patch system use $WORKDIR
          instead of $S as the root for patching? =A0I&#39;ve had to do a l=
ot
          of patching in our own layers recently and I&#39;ve always seen $=
S
          used as the root for the patch. =A0Are you explicitly setting S
          =3D &quot;${WORKDIR}/git&quot;? =A0That&#39;s what we do for our =
git recipes.
          =A0That&#39;s how you get the system to recognize the source
          somewhere other than just $WORKDIR.</div>
        <div><br>
        </div>
        <div>As for specifying a different -pnum, you
          absolutely can do that like so:</div>
        <div><br>
        </div>
        <div><i>SRC_URI +=3D &quot;<a>file://my-change.patch</a><b>;striple=
vel=3DX</b>&quot;</i></div>
        <div>
          <br>
        </div>
        <div>X is the pnum that you want. =A0Its default value is
          1.</div>
        <div><br>
        </div>
        <div>You may also find this page useful -- it contains
          all sorts of hints for setting up your recipes in a
          Yocto-standard way:</div>
        <div><br>
        </div>
        <div><a href=3D"https://wiki.yoctoproject.org/wiki/Recipe_&amp;_Pat=
ch_Style_Guide" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Recipe=
_&amp;_Patch_Style_Guide</a><br>
        </div>
        <div><br>
        </div>
        <div>That&#39;s where I learned about striplevel and the
          preference for it over the deprecated pnum parameter.</div>
        <div><br>
        </div>
        <div>Kind regards,</div>
        <div><br>
        </div>
        <div>Jerrod</div>
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
    </blockquote></div>
    Hi Jarod. Thanks, the pointer you gave will most certainly be of
    great aid. I will try the striplevel approach<br>
    instead of writing my own do_patch() override.<br>
    Regarding how certain I am that the root folder is ${WORKDIR} when
    patching, not at all ;)<br>
    In my do_patch() function is simply did `pwd` and it was not set to
    ${S} as I set it to.<br>
    That does not mean that the built-in patch system is using
    ${WORKDIR}, I am aware of that.<br>
    Things here is, even though my patch is placed in ${W} and I set
    ${S} to eg. ${W}/git/some/folder,<br>
    why would it not work? In another package I set ${S} to
    ${WORKDIR}/git and it works<br>
    just fine. I can not understand why setting ${S} to something else
    breaks the logic?<br>
    It&#39;s not that bitbake can not find the patch file, it definitely
    does that, but the -pnum seems to get<br>
    messed up. But maybe that is the whole point of having the
    striplevel=3DX in the first place.<span class=3D""><font color=3D"#8888=
88"><br>
    <br>
    Hans</font></span><div><div class=3D"h5"><br></div></div></div></blockq=
uote><div><br></div><div>pnum/striplevel&#39;s purpose is to strip off the =
leading paths from a patch file. =A0If you&#39;re having trouble understand=
ing how that works, this link might help:<div>
<br></div><div><a href=3D"http://drupal.org/patch/apply#comment-239397">htt=
p://drupal.org/patch/apply#comment-239397</a><br></div><div><br></div><div>=
Changing $S to a different depth and having do_patch() fail is certainly ex=
pected behavior if you don&#39;t change the value of striplevel. =A0Does th=
at answer your question?</div>
</div></div></div></div>

--20cf3074b47295870c04d75c039d--
