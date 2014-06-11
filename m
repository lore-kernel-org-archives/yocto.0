Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 682E2E00BE1; Wed, 11 Jun 2014 00:52:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 984ECE00B78
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 00:52:29 -0700 (PDT)
Received: by mail-wg0-f47.google.com with SMTP id k14so7672971wgh.30
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 00:52:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=LRtCw8Lfe8cmJJyGFppd6IJ+2T5JLpsqueciCqykSS4=;
	b=E7NOeCQJtfpZtWXa6gpXacsDw1SPZgWj4medhJaKAlZqtYt653B1nk3A0jHV5IpWN/
	zV0oogY787gj91zcHCeo7fPD14JWMrOM9A3Z8dsqw8fcD4LcET/4ZeSa71o1Ksfl2AZN
	teUWQUqSMxozsEl3Ki4igVJI7t+cWxIQJHOLRpf/DDECatI0CQG63nX9L9ruNtnBFGzv
	ubGVm5BFn5nNHkVGedx4BQpLyrAezdE807RsJNcLfembxt8VwSMHyCiRensqORog3+FP
	8yk5wZlvjW5fVtfSVH/MlhdQcAlmEy6Bxnyp/v/uexYq2/KXQVpXX9c5CV/qHoUtULid
	hHWg==
X-Gm-Message-State: ALoCoQmlcD+2QiAk43Xw3la/6uyGsa8OOWawqZJWAWNfqI6cs3zjSSW1FVEXfcMEOJMz7eSHrOj2
X-Received: by 10.194.189.116 with SMTP id gh20mr48623252wjc.41.1402473148475; 
	Wed, 11 Jun 2014 00:52:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Wed, 11 Jun 2014 00:52:08 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <539792BD.60804@dynamicdevices.co.uk>
References: <cover.1401706333.git.ajlennon@dynamicdevices.co.uk>
	<f4ebcded14c4f0d1cf509ad58e3ba02a2ad71a89.1401706333.git.ajlennon@dynamicdevices.co.uk>
	<CAK18fxHD-SvL=6df=aW6LWG03Qb0rUCSHeS5F+LVgW5SCWj4KQ@mail.gmail.com>
	<539792BD.60804@dynamicdevices.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 11 Jun 2014 10:52:08 +0300
Message-ID: <CAK18fxHry2q9hrQLj7VdfVReBij9smU0VRJ-8U34sgga+A0MjQ@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto Project <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>,
	jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
Subject: Re: [meta-raspberrypi][PATCH 1/2] userland: Add '--no-as-needed' linker flag to ensure all specified shared libraries are linked against applications (e.g. raspivid)
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
X-List-Received-Date: Wed, 11 Jun 2014 07:52:34 -0000
Content-Type: multipart/alternative; boundary=047d7b622426d2840b04fb8ab987

--047d7b622426d2840b04fb8ab987
Content-Type: text/plain; charset=UTF-8

On Wed, Jun 11, 2014 at 2:20 AM, Alex J Lennon <
ajlennon@dynamicdevices.co.uk> wrote:

>
> On 10/06/2014 19:22, Andrei Gherzan wrote:
>
>
>
> On Mon, Jun 2, 2014 at 1:58 PM, Alex J Lennon <
> ajlennon@dynamicdevices.co.uk> wrote:
>
>> libmmal_vc_client.so makes use of __attribute__(constructor) to ensure
>> that supplier components (e.g. camera) are loaded when the static library
>> is loaded.
>>
>
>  There shouldn't be more than 78 characters per line. I did this change
> for this patch (the other you already submited). More info:
>  http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines
>
>
> Understood - thanks Andrei, I'll try to bear that in mind.
>
> Perhaps you'd be open to the idea of a patch to add these requirements
> into the meta-raspberrypi README in-between 5A/5B.
>
> I believe it would help contributors like myself, who are new to the
> process requirements, to understand how to put a patch together correctly,
> as well as where to sent it.
>

That's a good idea. Will send a patch.


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7b622426d2840b04fb8ab987
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Jun 11, 2014 at 2:20 AM, Alex J Lennon <span dir=3D"ltr">&l=
t;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlenn=
on@dynamicdevices.co.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <br>
    <div>On 10/06/2014 19:22, Andrei Gherzan
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_extra"><br>
          <br>
          <div class=3D"gmail_quote">On Mon, Jun 2, 2014 at 1:58 PM, Alex
            J Lennon <span dir=3D"ltr">&lt;<a href=3D"mailto:ajlennon@dynam=
icdevices.co.uk" target=3D"_blank">ajlennon@dynamicdevices.co.uk</a>&gt;</s=
pan>
            wrote:<br>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-s=
tyle:solid;padding-left:1ex">
              <div>libmmal_vc_client.so makes use of
                __attribute__(constructor) to ensure that supplier
                components (e.g. camera) are loaded when the static
                library is loaded.<br>
              </div>
            </blockquote>
            <div><br>
            </div>
            <div>There shouldn&#39;t be more than 78 characters per line. I
              did this change for this patch (the other you already
              submited). More info:<br>
            </div>
            <div><a href=3D"http://www.openembedded.org/wiki/Commit_Patch_M=
essage_Guidelines" target=3D"_blank">http://www.openembedded.org/wiki/Commi=
t_Patch_Message_Guidelines</a><br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    Understood - thanks Andrei, I&#39;ll try to bear that in mind. <br>
    <br>
    Perhaps you&#39;d be open to the idea of a patch to add these
    requirements into the meta-raspberrypi README in-between 5A/5B.<br>
    <br>
    I believe it would help contributors like myself, who are new to the
    process requirements, to understand how to put a patch together
    correctly, as well as where to sent it.<br></div></blockquote><div><br>=
</div><div>That&#39;s a good idea. Will send a patch.=C2=A0</div></div><br =
clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"><div style=3D"text-ali=
gn:center">

</div><div style=3D"text-align:center"><div align=3D"left" style=3D"font-fa=
mily:&#39;Times New Roman&#39;;font-size:medium"><b style=3D"color:rgb(51,5=
1,51);font-family:Arial;font-size:small;text-align:center">Andrei Gherzan</=
b><font face=3D"Arial" color=3D"#333333" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =C2=A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--047d7b622426d2840b04fb8ab987--
