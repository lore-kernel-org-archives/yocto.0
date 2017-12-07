Return-Path: <pauldotknopf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A26C5E00D75; Thu,  7 Dec 2017 12:30:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pauldotknopf[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15123E00D71
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 12:30:14 -0800 (PST)
Received: by mail-it0-f53.google.com with SMTP id x28so81850ita.0
	for <yocto@yoctoproject.org>; Thu, 07 Dec 2017 12:30:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rzCrDMbcr65206OjMN+Tdzjk6MbxUBuRb6SgD4jdtFI=;
	b=u38KWZiUQjGBv/CM2AXsO5XEYdT3CNwd6iBSsxhZGSPHRKCJgin2Em2GjPdDU7PABk
	Vt3dgad+vM7GO10KcAt/gifxFCSi5U+ldndUxpvO0xl4IH8h/0TBzk5crkbM2cXUxP4u
	v8wmVB4CsSSxamdadH5wwj5L/OkT7BbD/bJn9vzLrpiupTxfH+dDQUGPKE5fZaCrSlJY
	ZQ3DCgZQteOO/jirc/kYji/zul5nDh+t00JvfjpZ5FuuhyTPC1hX/o2eRUT5HmY6tA9O
	p3A8Ob0apBzZz2S8ucANLE453Lv3JKmwezkXFUVpnSeUoJtnK5J1BrBSfg0l/e3KyyF3
	J4VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rzCrDMbcr65206OjMN+Tdzjk6MbxUBuRb6SgD4jdtFI=;
	b=npWKATDIsu9r2epgACodL/DhKexmh8fFvRMIf1ihwG/lfmprnLcecEy+uTgnqTL8cj
	opHfitDb++8Yy5OvLEDTteOPpDkigfKbXg9o5wfT2Xq0epL4/STHLKFZDMSadOXC90Md
	32VcVIWv1HJ0O0yy6W1vB3Y+eC7ViXCbGwCAdCBnFaAp+Ok9IvcMWDoXcclna7MS187D
	nOqGJuXa61e8yqrCdulnQc6oCbsWcLeyMId837LBYsnbPAco/4JQ0ellqEY9khB4OdJ4
	X6jV+x3uJsbg/JUL+Sr7ps8l0UMDshJNitiqO7/2AGOnT5X1248osJUEC17ppv5ok/YB
	cg3Q==
X-Gm-Message-State: AKGB3mK8uoSB5fA8bQjqZMJpW4CI1I06RtGe74Sb5bOjHuiKr0kotO6B
	+hmp9Ik9/3kMRjM/tOmiyOk68sCN7nDzSe8du2w=
X-Google-Smtp-Source: AGs4zMbI/wDlAb8PFvBQV7o81KiNJ/9hJH7l4BMgY36SDgytXW2PuSEyWEZgJrMymzww8SxLNbQY+hdiiu/3V1BrUz4=
X-Received: by 10.36.101.140 with SMTP id u134mr2872674itb.108.1512678614257; 
	Thu, 07 Dec 2017 12:30:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.132.96 with HTTP; Thu, 7 Dec 2017 12:30:13 -0800 (PST)
In-Reply-To: <43b0281e-9d30-a07f-6b6d-048f91326c32@linux.intel.com>
References: <CAKmWj-1fwjsLE9SU05JBO0Q3BHXqRHdOYfN759=0D-OtYYXJrA@mail.gmail.com>
	<CAKmWj-0_JS5WTDC+ih2oW9_MPTnZJZurHj0cRy4N1jXcH5vSPg@mail.gmail.com>
	<95676e99-422b-8ab4-131f-de9878d3b3e8@linux.intel.com>
	<CAKmWj-1PzW29FUnWTeuJh6=hRghQ-7vi+PKst5K1cL4Tg1LQyw@mail.gmail.com>
	<43b0281e-9d30-a07f-6b6d-048f91326c32@linux.intel.com>
From: Paul Knopf <pauldotknopf@gmail.com>
Date: Thu, 7 Dec 2017 15:30:13 -0500
Message-ID: <CAKmWj-29bb=R6-PgwD9VMT0gy-X-1wVNRXpzEezRbCovNtqeEA@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Preventing a variable from being cached
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
X-List-Received-Date: Thu, 07 Dec 2017 20:30:23 -0000
Content-Type: multipart/alternative; boundary="001a1146011c7657da055fc5ef0d"

--001a1146011c7657da055fc5ef0d
Content-Type: text/plain; charset="UTF-8"

Use a SRC_URI for another recip? Let me show you my recipe.

SUMMARY = "Puts a file in the image that contains the application version."
DESCRIPTION = "Puts a file in the image that contains the application
version."
LICENSE = "Proprietary"
LIC_FILES_CHKSUM =
"file://${COREBASE}/meta/files/common-licenses/Proprietary;md5=0557f9d92cf58f2ccdd50f62f8ac0b28"

inherit allarch deploy

DEPENDS += "jq-native"

# Want to store the git branch we are on, as well as the git SHA for the
current commit.
def get_git_position(d):
    import bb.process
    (output, error) = bb.process.run("git rev-parse --abbrev-ref HEAD")
    result = output.rstrip()
    (output, error) = bb.process.run("git rev-parse HEAD")
    result += "-"
    result += output.rstrip()
    return result
BUILD_GIT_POSITION := "${@get_git_position(d)}"

do_compile() {
    /usr/local/bin/gitversion "${LAYERROOT}" > ${S}/version.json
}

do_compile[vardeps] += "BUILD_GIT_POSITION"

do_install () {
    GIT_VERSION_OUTPUT=`cat ${S}/version.json`
    BUILD_GIT_COMMIT=`echo $GIT_VERSION_OUTPUT | jq '.Sha' --raw-output`
    BUILD_GIT_DIRTY=`test -n "git --git-dir "${LAYERROOT}/.git" --work-tree
"${LAYERROOT}" status --porcelain" && echo "+CHANGES" || true`
    BUILD_GIT_SEMVAR_VERSION=`echo $GIT_VERSION_OUTPUT | jq '.SemVer'
--raw-output`
    BUILD_GIT_INFORMATION_VERSION=`echo $GIT_VERSION_OUTPUT \
        | jq '.InformationalVersion' --raw-output \
        | sed -r -e 's,Branch\.,\.,' -e 's,\.Sha,,' -e
's,(\.[0-9a-fA-F]{8})[0-9a-fA-F]+$,\1,' `

install -d ${D}${sysconfdir}
    echo "BUILD_GIT_COMMIT:$BUILD_GIT_COMMIT" >
${D}${sysconfdir}/app-version
    echo "BUILD_GIT_DIRTY:$BUILD_GIT_DIRTY" >> ${D}${sysconfdir}/app-version
    echo "BUILD_GIT_SEMVAR_VERSION:$BUILD_GIT_SEMVAR_VERSION" >>
${D}${sysconfdir}/app-version
    echo "BUILD_GIT_INFORMATION_VERSION:$BUILD_GIT_INFORMATION_VERSION" >>
${D}${sysconfdir}/app-version
}

do_deploy() {
    install ${S}/version.json ${DEPLOYDIR}/version.json
}

addtask do_deploy after do_install

FILES_${PN} = "${sysconfdir}/*"

On Thu, Dec 7, 2017 at 3:28 PM, Alexander Kanavin <
alexander.kanavin@linux.intel.com> wrote:

> On 12/07/2017 10:22 PM, Paul Knopf wrote:
>
>> I have all my meta-layers and build conf files checked into a single
>> repository (submodules for layers). I want a recipe to look at the git
>> repository, and place a file in the build. I'd like this repository to read
>> the HEAD, and decide if it needs to be rebuilt (to put new file in image)
>> based off of HEAD/branch location.
>>
>
>
> Use the file: fetcher for the file in SRC_URI, and the fetcher will detect
> if the file has changed and trigger a rebuild accordingly.
>
> Alex
>
>

--001a1146011c7657da055fc5ef0d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Use a SRC_URI for another recip? Let me show you my recipe=
.<div><br></div><div><div>SUMMARY =3D &quot;Puts a file in the image that c=
ontains the application version.&quot;</div><div>DESCRIPTION =3D &quot;Puts=
 a file in the image that contains the application version.&quot;</div><div=
>LICENSE =3D &quot;Proprietary&quot;</div><div>LIC_FILES_CHKSUM =3D &quot;f=
ile://${COREBASE}/meta/files/common-licenses/Proprietary;md5=3D0557f9d92cf5=
8f2ccdd50f62f8ac0b28&quot;</div><div><br></div><div>inherit allarch deploy<=
/div><div><br></div><div>DEPENDS +=3D &quot;jq-native&quot;</div><div><br><=
/div><div># Want to store the git branch we are on, as well as the git SHA =
for the current commit.</div><div>def get_git_position(d):</div><div>=C2=A0=
 =C2=A0 import bb.process</div><div>=C2=A0 =C2=A0 (output, error) =3D bb.pr=
ocess.run(&quot;git rev-parse --abbrev-ref HEAD&quot;)</div><div>=C2=A0 =C2=
=A0 result =3D output.rstrip()</div><div>=C2=A0 =C2=A0 (output, error) =3D =
bb.process.run(&quot;git rev-parse HEAD&quot;)</div><div>=C2=A0 =C2=A0 resu=
lt +=3D &quot;-&quot;</div><div>=C2=A0 =C2=A0 result +=3D output.rstrip()</=
div><div>=C2=A0 =C2=A0 return result</div><div>BUILD_GIT_POSITION :=3D &quo=
t;${@get_git_position(d)}&quot;</div><div><br></div><div>do_compile() {</di=
v><div>=C2=A0 =C2=A0 /usr/local/bin/gitversion &quot;${LAYERROOT}&quot; &gt=
; ${S}/version.json</div><div>}</div><div><br></div><div>do_compile[vardeps=
] +=3D &quot;BUILD_GIT_POSITION&quot;</div><div><br></div><div>do_install (=
) {</div><div>=C2=A0 =C2=A0 GIT_VERSION_OUTPUT=3D`cat ${S}/version.json`</d=
iv><div>=C2=A0 =C2=A0 BUILD_GIT_COMMIT=3D`echo $GIT_VERSION_OUTPUT | jq &#3=
9;.Sha&#39; --raw-output`</div><div>=C2=A0 =C2=A0 BUILD_GIT_DIRTY=3D`test -=
n &quot;git --git-dir &quot;${LAYERROOT}/.git&quot; --work-tree &quot;${LAY=
ERROOT}&quot; status --porcelain&quot; &amp;&amp; echo &quot;+CHANGES&quot;=
 || true`</div><div>=C2=A0 =C2=A0 BUILD_GIT_SEMVAR_VERSION=3D`echo $GIT_VER=
SION_OUTPUT | jq &#39;.SemVer&#39; --raw-output`</div><div>=C2=A0 =C2=A0 BU=
ILD_GIT_INFORMATION_VERSION=3D`echo $GIT_VERSION_OUTPUT \</div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 | jq &#39;.InformationalVersion&#39; --raw-output \</d=
iv><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 | sed -r -e &#39;s,Branch\.,\.,&#39; -e=
 &#39;s,\.Sha,,&#39; -e &#39;s,(\.[0-9a-fA-F]{8})[0-9a-fA-F]+$,\1,&#39; `</=
div><div><br></div><div><span style=3D"white-space:pre">	</span>install -d =
${D}${sysconfdir}</div><div>=C2=A0 =C2=A0 echo &quot;BUILD_GIT_COMMIT:$BUIL=
D_GIT_COMMIT&quot; &gt; ${D}${sysconfdir}/app-version</div><div>=C2=A0 =C2=
=A0 echo &quot;BUILD_GIT_DIRTY:$BUILD_GIT_DIRTY&quot; &gt;&gt; ${D}${syscon=
fdir}/app-version</div><div>=C2=A0 =C2=A0 echo &quot;BUILD_GIT_SEMVAR_VERSI=
ON:$BUILD_GIT_SEMVAR_VERSION&quot; &gt;&gt; ${D}${sysconfdir}/app-version</=
div><div>=C2=A0 =C2=A0 echo &quot;BUILD_GIT_INFORMATION_VERSION:$BUILD_GIT_=
INFORMATION_VERSION&quot; &gt;&gt; ${D}${sysconfdir}/app-version</div><div>=
}</div><div><br></div><div>do_deploy() {</div><div>=C2=A0 =C2=A0 install ${=
S}/version.json ${DEPLOYDIR}/version.json</div><div>}</div><div><br></div><=
div>addtask do_deploy after do_install</div><div><br></div><div>FILES_${PN}=
 =3D &quot;${sysconfdir}/*&quot;</div></div></div><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote">On Thu, Dec 7, 2017 at 3:28 PM, Alexander =
Kanavin <span dir=3D"ltr">&lt;<a href=3D"mailto:alexander.kanavin@linux.int=
el.com" target=3D"_blank">alexander.kanavin@linux.intel.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On 12/07/2017 10:=
22 PM, Paul Knopf wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I have all my meta-layers and build conf files checked into a single reposi=
tory (submodules for layers). I want a recipe to look at the git repository=
, and place a file in the build. I&#39;d like this repository to read the H=
EAD, and decide if it needs to be rebuilt (to put new file in image) based =
off of HEAD/branch location.<br>
</blockquote>
<br>
<br></span>
Use the file: fetcher for the file in SRC_URI, and the fetcher will detect =
if the file has changed and trigger a rebuild accordingly.<br>
<br>
Alex<br>
<br>
</blockquote></div><br></div>

--001a1146011c7657da055fc5ef0d--
