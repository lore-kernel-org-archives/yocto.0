Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 647CEE00BAF; Tue,  5 Feb 2019 13:56:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
	[209.85.208.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08658E00B81
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2019 13:56:22 -0800 (PST)
Received: by mail-ed1-f42.google.com with SMTP id h15so4246819edb.4
	for <yocto@yoctoproject.org>; Tue, 05 Feb 2019 13:56:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=eG27wrUL+7rFwJmmQUfKP7rIr9DVPDqEI/s3K6ANURk=;
	b=As5snGG+N/t2Lo7Zb5RVHm6grtJn+hr2tHv0HrSHFA6+fN5Ygmb3CZxKIxH+qCLu0z
	jOrdARvGUxvj0K9W19+uP8Zk2VR/UG1lPbQb97WcGr70G88BmRwVWFH8gjEyn5L0WH+I
	SQjma86A8U8lecvIEy9sK2/bwgRHoYVXEKDNuNx0Y0mj9uDu2KY2JxuEJGFd5PQj1bZ1
	9gOoGkrNikBWDGJ4bc7R2I5QxlepcS0sVOAkTX0SqAG9ut22KDcFll1EHxBRmp9TTgW0
	eWUAXmyfVOnENbjLXflt9/CkKL2RGY0QfYriCyejYePlZn12X8zP0XorQAV54eChCUW8
	CwIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=eG27wrUL+7rFwJmmQUfKP7rIr9DVPDqEI/s3K6ANURk=;
	b=KAjCrxKUZGdPlW8vAkM5yE+JXIpGt1hjJHHUhK+BnGCVD2cvK4+d/0PFiSfEUkxMj/
	maMN4n0x2ll8IRGikLbBIXmKR8rj3q0xx5iwiGcjQbETPZvj21+eQNC3NBUXYVNBa9ar
	W5+vALrTeBbEdmBDDqQTHlinvWTr9CkmQhxaMXOij0gv9h7UCSrTxd4ZssJlCmu3orV4
	5krxcKD/KUB4QMsScZjv5IKsHN/bqkYAqqxcm/AHoIri8DDbnqczeRnHk6lXiLtDKt56
	vAAqgwN7D0X5BI+0GOLmAdRZAZajvH4T3JxFUi6L1ds7QlOeNYb1dF/xaMD2/oSiDFbD
	5xAA==
X-Gm-Message-State: AHQUAubiOfIdKNfUGBztnEsCXkfcoyZoTQYZHHvPhZEQz5PxBD8FpvXn
	Cgd3ROSaYNggchhhPo/AP+6rB8XJc6FK2zcGFyE=
X-Google-Smtp-Source: AHgI3Ia5syOfaHOmlrKL8sxul6nTpXToQy5n1c8uggnud0ELPH81JuwkYxJ5HEYWca4P2oJwUZMbqO7r8A4Y0J1pT3g=
X-Received: by 2002:a50:bae3:: with SMTP id x90mr5767324ede.221.1549403782010; 
	Tue, 05 Feb 2019 13:56:22 -0800 (PST)
MIME-Version: 1.0
References: <052201d4bd70$eea45180$cbecf480$@gmail.com>
	<CAFNP8Otu3jLLi9OKhZbhf+hDcuvwYW-9SUtYgSNiAQwRZMyLSA@mail.gmail.com>
	<c234365c25becb7682a366ab00b250a66acbc168.camel@gmail.com>
	<bebc8b9f-91bb-23a3-0ddd-a604f6e8b054@gmail.com>
In-Reply-To: <bebc8b9f-91bb-23a3-0ddd-a604f6e8b054@gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Tue, 5 Feb 2019 13:56:09 -0800
Message-ID: <CAFNP8OsgoN70wVDkxc3w5rtuZrsM8y0f-m9swoODQyF0QA384g@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: YPTM minutes
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
X-List-Received-Date: Tue, 05 Feb 2019 21:56:25 -0000
Content-Type: multipart/alternative; boundary="0000000000000a5da305812cae1a"

--0000000000000a5da305812cae1a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 5, 2019 at 1:05 PM akuster808 <akuster808@gmail.com> wrote:

>
>
> On 2/5/19 10:24 AM, Joshua Watt wrote:
>
> On Tue, 2019-02-05 at 10:11 -0800, Scott Rifenbark wrote:
>
>
>
> On Tue, Feb 5, 2019 at 8:37 AM <sjolley.yp.pm@gmail.com> wrote:
>
> *Yocto Technical Team Minutes for Feb. 5, 2019.*
>
>
>
> Attendees: Armin, David, Joshua, Randy, Tim, Richard G., Stephen,
> Jan-Simon, Manjukum, Tracey, Trevor, Nick, Richard P, Mark, Kate, Michael=
,
>
>
>
> YP 2.6.1 was released on Feb. 4, 2019.
>
> YP 2.7 M2 was built and is in QA and is 79% done.  See:
> https://wiki.yoctoproject.org/wiki/2.7_QA_Status
>
>
>
> Armin agreed to add Ubuntu 18.4 to YP 2.6 series and we will use in for Y=
P
> 2.7
>
> We discussed that the YP 2.6 manual doesn=E2=80=99t have an upgrading to =
YP 2.6.
> Tracey will look into this.
>
>
> Can I get some clarification on this.  Ubuntu 18.04 seems to be an LTS.  =
I
> don't have "LTS" listed in the 2.6 ref-manual (
> https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#detailed-sup=
ported-distros)
> but do have Ubuntu 18.04 listed as a supported distro.  What is meant by
> "... the YP 2.6 manual doesn't have an upgrading to YP 2.6."?  - Thanks
> Scott
>
>
> I think there is a little confusion here. There are actually 2 issues:
>
> 1) The Yocto 2.6 manual doesn't have the "Moving to the Yocto Project 2.6
> Release" section to describe the changes that have been made from 2.5 ->
> 2.6 (
> https://www.yoctoproject.org/docs/2.6/mega-manual/mega-manual.html#moving=
-to-the-yocto-project-2.5-release).
> Oddly, this section *is* present in the "latest" mega manual.
>
> 2) The second (unrelated) issue has to do with reporting 18.04 as a
> supported host distro. I'm not as familiar with this one, so I'll let
> someone else chime in.
>
>
> This is in thud-next:
>
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta-poky/conf/dist=
ro/poky.conf?h=3Dthud-next&id=3D263cf203bd363a6b9d58524ff5862d23c76e6390
>
> Once I get sumo stabilized, the same will be validated and back ported.
>

Once poky.conf is legit for a release, I have a script that extracts these
repos out and that is what I use for the manuals.
Thanks


> - armin
>
>
>
>
>
> We discussed the status of YP 2.7 upgrades and we are doing OK there.  We
> are struggling on new features YP 2.7.  Richard is primarily working to
> stabilize the autobuilder to produce an automated QA report to allow QA t=
o
> transition from Intel.
>
>
>
> Richard discussed maintainers of OE-Core.  AUH is sending requests but no=
t
> getting feedback.
>
>
>
> Richard discussed that we have issues with some products and need support
> from the community to fix.
>
>
>
> Tim discussed ptest issues Richard has identified.
>
>
>
> Richard asked if there were ideas about how to better communicate with th=
e
> community. No specific suggestions.
>
>
>
> Thanks,
>
>
>
> *Stephen K. Jolley*
>
> *Yocto Project Project Manager*
>
> (    *Cell*:                (208) 244-4460
>
> * *Email*:              *sjolley.yp.pm@gmail.com
> <sjolley.yp.pm@gmail.com>*
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
> --
>
> Joshua Watt <JPEWhacker@gmail.com>
>
>
>

--0000000000000a5da305812cae1a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 5, 2019 at 1:05 PM akuste=
r808 &lt;<a href=3D"mailto:akuster808@gmail.com">akuster808@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <br>
    <br>
    <div class=3D"gmail-m_-2830833098536927246moz-cite-prefix">On 2/5/19 10=
:24 AM, Joshua Watt wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div>On Tue, 2019-02-05 at 10:11 -0800, Scott Rifenbark wrote:</div>
      <blockquote type=3D"cite" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:2px solid rgb(114,159,207);padding-left:1ex">
        <div dir=3D"ltr">
          <div dir=3D"ltr">
            <div dir=3D"ltr"><br>
            </div>
            <br>
            <div class=3D"gmail_quote">
              <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 5, 2019 at
                8:37 AM &lt;<a href=3D"mailto:sjolley.yp.pm@gmail.com" targ=
et=3D"_blank">sjolley.yp.pm@gmail.com</a>&gt;
                wrote:<br>
              </div>
              <blockquote type=3D"cite" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:2px solid rgb(114,159,207);padding-left:1ex">
                <div lang=3D"EN-US">
                  <div class=3D"gmail-m_-2830833098536927246gmail-m_-183938=
7213219743606WordSection1">
                    <p style=3D"margin:0in 0in 0.0001pt"><b><span style=3D"=
font-family:&quot;Arial&quot;,sans-serif;color:black">Yocto
                          Technical Team Minutes for Feb. 5, 2019.</span></=
b></p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p style=3D"margin:0in 0in 0.0001pt"><span style=3D"fon=
t-family:&quot;Arial&quot;,sans-serif;color:black">Attendees:
                        Armin, David, Joshua, Randy, Tim, Richard G.,
                        Stephen, Jan-Simon, Manjukum, Tracey, Trevor,
                        Nick, Richard P, Mark, Kate, Michael, </span></p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p style=3D"margin:0in 0in 0.0001pt"><span style=3D"fon=
t-family:&quot;Arial&quot;,sans-serif;color:black">YP
                        2.6.1 was released on Feb. 4, 2019.</span></p>
                    <p style=3D"margin:0in 0in 0.0001pt"><span style=3D"fon=
t-family:&quot;Arial&quot;,sans-serif;color:black">YP
                        2.7 M2 was built and is in QA and is 79% done.=C2=
=A0
                        See: </span><a href=3D"https://wiki.yoctoproject.or=
g/wiki/2.7_QA_Status" target=3D"_blank"><span style=3D"font-family:&quot;Ar=
ial&quot;,sans-serif;color:rgb(17,85,204)">https://wiki.yoctoproject.org/wi=
ki/2.7_QA_Status</span></a></p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p style=3D"margin:0in 0in 0.0001pt"><span style=3D"fon=
t-family:&quot;Arial&quot;,sans-serif;color:black">Armin
                        agreed to add Ubuntu 18.4 to YP 2.6 series and
                        we will use in for YP 2.7 </span></p>
                    <p style=3D"margin:0in 0in 0.0001pt"><span style=3D"fon=
t-family:&quot;Arial&quot;,sans-serif;color:black">We
                        discussed that the YP 2.6 manual doesn=E2=80=99t ha=
ve an
                        upgrading to YP 2.6.=C2=A0 Tracey will look into
                        this.</span></p>
                  </div>
                </div>
                <br>
              </blockquote>
              <div><br>
              </div>
              <div>Can I get some clarification on this.=C2=A0 Ubuntu 18.04
                seems to be an LTS.=C2=A0 I don&#39;t have &quot;LTS&quot; =
listed in the
                2.6 ref-manual (<a href=3D"https://yoctoproject.org/docs/2.=
6/ref-manual/ref-manual.html#detailed-supported-distros" target=3D"_blank">=
https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#detailed-suppo=
rted-distros</a>)
                but do have Ubuntu 18.04 listed as a supported distro.=C2=
=A0
                What is meant by &quot;... the YP 2.6 manual doesn&#39;t ha=
ve an
                upgrading to YP 2.6.&quot;?=C2=A0 - Thanks Scott</div>
            </div>
          </div>
        </div>
      </blockquote>
      <div><br>
      </div>
      <div>I think there is a little confusion here. There are actually
        2 issues:</div>
      <div><br>
      </div>
      <div> 1) The Yocto 2.6 manual doesn&#39;t have the &quot;Moving to th=
e
        Yocto Project 2.6 Release&quot; section to describe the changes tha=
t
        have been made from 2.5 -&gt; 2.6 (<a href=3D"https://www.yoctoproj=
ect.org/docs/2.6/mega-manual/mega-manual.html#moving-to-the-yocto-project-2=
.5-release" target=3D"_blank">https://www.yoctoproject.org/docs/2.6/mega-ma=
nual/mega-manual.html#moving-to-the-yocto-project-2.5-release</a>).
        Oddly, this section *is* present in the &quot;latest&quot; mega man=
ual.</div>
      <div><br>
      </div>
      <div> 2) The second (unrelated) issue has to do with reporting
        18.04 as a supported host distro. I&#39;m not as familiar with this
        one, so I&#39;ll let someone else chime in.</div>
    </blockquote>
    <br>
    This is in thud-next:<br>
    <br>
<a class=3D"gmail-m_-2830833098536927246moz-txt-link-freetext" href=3D"http=
://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta-poky/conf/distro/pok=
y.conf?h=3Dthud-next&amp;id=3D263cf203bd363a6b9d58524ff5862d23c76e6390" tar=
get=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta-p=
oky/conf/distro/poky.conf?h=3Dthud-next&amp;id=3D263cf203bd363a6b9d58524ff5=
862d23c76e6390</a><br>
    <br>
    Once I get sumo stabilized, the same will be validated and back
    ported.<br></div></blockquote><div><br></div><div>Once poky.conf is leg=
it for a release, I have a script that extracts these repos out and that is=
 what I use for the manuals.</div><div>Thanks</div><div><br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div bgcolor=3D"#FFFFFF">
    <br>
    - armin<br>
    <blockquote type=3D"cite">
      <div><br>
      </div>
      <blockquote type=3D"cite" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:2px solid rgb(114,159,207);padding-left:1ex">
        <div dir=3D"ltr">
          <div dir=3D"ltr">
            <div class=3D"gmail_quote">
              <div> <br>
              </div>
              <blockquote type=3D"cite" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:2px solid rgb(114,159,207);padding-left:1ex">
                <div lang=3D"EN-US">
                  <div class=3D"gmail-m_-2830833098536927246gmail-m_-183938=
7213219743606WordSection1">
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p style=3D"margin:0in 0in 0.0001pt"><span style=3D"fon=
t-family:&quot;Arial&quot;,sans-serif;color:black">We
                        discussed the status of YP 2.7 upgrades and we
                        are doing OK there.=C2=A0 We are struggling on new
                        features YP 2.7.=C2=A0 Richard is primarily working
                        to stabilize the autobuilder to produce an
                        automated QA report to allow QA to transition
                        from Intel. </span></p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p style=3D"margin:0in 0in 0.0001pt"><span style=3D"fon=
t-family:&quot;Arial&quot;,sans-serif;color:black">Richard
                        discussed maintainers of OE-Core.=C2=A0 AUH is
                        sending requests but not getting feedback. </span><=
/p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p style=3D"margin:0in 0in 0.0001pt"><span style=3D"fon=
t-family:&quot;Arial&quot;,sans-serif;color:black">Richard
                        discussed that we have issues with some products
                        and need support from the community to fix.</span><=
/p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p style=3D"margin:0in 0in 0.0001pt"><span style=3D"fon=
t-family:&quot;Arial&quot;,sans-serif;color:black">Tim
                        discussed ptest issues Richard has identified.</spa=
n></p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p style=3D"margin:0in 0in 0.0001pt"><span style=3D"fon=
t-family:&quot;Arial&quot;,sans-serif;color:black">Richard
                        asked if there were ideas about how to better
                        communicate with the community. No specific
                        suggestions.</span></p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p class=3D"MsoNormal">Thanks,</p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p class=3D"MsoNormal" style=3D"break-after:avoid"><b><=
i><span>Stephen K.
                            Jolley</span></i></b><b><i><span style=3D"font-=
size:16pt;font-family:&quot;Tahoma&quot;,sans-serif;color:purple"></span></=
i></b></p>
                    <p class=3D"MsoNormal"><b><span>Yocto Project Project
                          Manager</span></b></p>
                    <p class=3D"MsoNormal"><span style=3D"font-size:9pt;fon=
t-family:Wingdings;color:black">(</span><span>=C2=A0=C2=A0=C2=A0 </span><b>=
<span>Cell</span></b><span>:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span>(208) 244-4460</=
span><span></span></p>
                    <p class=3D"MsoNormal"><span style=3D"font-size:9pt;fon=
t-family:Wingdings">* </span><b><span lang=3D"FR">Email</span></b><span lan=
g=3D"FR">:</span><span lang=3D"FR">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<u><span style=3D"color:blue">=
<a href=3D"mailto:sjolley.yp.pm@gmail.com" target=3D"_blank"><span style=3D=
"color:rgb(5,99,193)">sjolley.yp.pm@gmail.com</span></a></span></u></span><=
span style=3D"font-size:12pt;font-family:&quot;Arial&quot;,sans-serif" lang=
=3D"FR"></span></p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                  </div>
                </div>
                -- <br>
                _______________________________________________<br>
                yocto mailing list<br>
                <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a><br>
                <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" r=
el=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo=
/yocto</a><br>
              </blockquote>
            </div>
          </div>
        </div>
      </blockquote>
      <div><span>
          <pre>--=20
</pre>
          Joshua Watt &lt;<a href=3D"mailto:JPEWhacker@gmail.com" target=3D=
"_blank">JPEWhacker@gmail.com</a>&gt;</span></div>
      <br>
      <fieldset class=3D"gmail-m_-2830833098536927246mimeAttachmentHeader">=
</fieldset>
    </blockquote>
    <br>
  </div>

</blockquote></div></div>

--0000000000000a5da305812cae1a--
