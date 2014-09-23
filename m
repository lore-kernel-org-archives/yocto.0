Return-Path: <navani.srivastava@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62A58E00874; Mon, 22 Sep 2014 21:26:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (navani.srivastava[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90706E00871
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 21:26:24 -0700 (PDT)
Received: by mail-ie0-f170.google.com with SMTP id x19so5920101ier.1
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 21:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=H57+eoAmze0CZkbA8DvCOyhiExsIJoZ3KKs9aeKK1n0=;
	b=jkhWQXORV31CGCaYgej4cuEOnOm75l5JmAmn1w1UVSY5e//1vFrb1X9OkDHCi4fDeo
	JEgbIK3QBuZ4r8yvMJ0igf3wvCvU3yi7RzI9RCRbOVYaTPB2nQXMILjoPb9gjW1+k99S
	uHqhhb60x8S5hP45B3O9v5iZcajtkjXU3ZuBZMn1H9UHfF6bbG4jhE04QiOZQ7Phngwf
	wZ50jc8yc+Q9Okp/PDw9D5lbKvJKu08PPFgjcPXghkWL+z6JQbd4SvTdevcLiZBMKM1v
	S00ct48IWvKqB+wftNaA9BHtB/TNk9/+13FCWnZRbnpe2vLSbHoSiZAv/Ml1K8XjWk1w
	dvjg==
X-Received: by 10.50.117.106 with SMTP id kd10mr194321igb.5.1411446383534;
	Mon, 22 Sep 2014 21:26:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.217 with HTTP; Mon, 22 Sep 2014 21:26:03 -0700 (PDT)
In-Reply-To: <CA+Z6RkWN=wbJkf94rwPWNqDKdGvhGPRvdTXFjqM+Uho8mTCzkg@mail.gmail.com>
References: <CA+Z6RkW1D8pPpGCTu_SwF5Q+d0Um-MuYQM3mtube=u2txu0V6A@mail.gmail.com>
	<26633520.FLER5Y4OlA@peggleto-mobl5.ger.corp.intel.com>
	<CA+Z6RkWSwoqcn9HBttOn1jrTaX5X=OhLLGVsex5TqzWcHGG1LQ@mail.gmail.com>
	<2002943.O9tR5uaDDD@peggleto-mobl5.ger.corp.intel.com>
	<CA+Z6RkWN=wbJkf94rwPWNqDKdGvhGPRvdTXFjqM+Uho8mTCzkg@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Tue, 23 Sep 2014 09:56:03 +0530
Message-ID: <CA+Z6RkUOs2panpkstvdoiy8cCf7vL_7XCcUkQq4hyPvGYG=3NQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Navani Srivastava <navani.srivastava@lnttechservices.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Integration of custom recipe with SDK
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
X-List-Received-Date: Tue, 23 Sep 2014 04:26:28 -0000
X-Groupsio-MsgNum: 21574
Content-Type: multipart/mixed; boundary=089e0139fb625062440503b3f854

--089e0139fb625062440503b3f854
Content-Type: multipart/alternative; boundary=089e0139fb625062400503b3f852

--089e0139fb625062400503b3f852
Content-Type: text/plain; charset=UTF-8

Please find the recipe attached herewith for qjson. This recipe is helpful
to work with qt4-embedded as qt4 doesn't have qjson feature in built.
I tried 'bitbake -c populate_sdk <myimage>' but it has not integrated qjson
package along. I am suspecting qjson recipe now. Am i missing anything in
attached recipe which is blocking me to integrate qjson in SDK?

Navani

On Mon, Sep 22, 2014 at 2:48 PM, Navani Srivastava <
navani.srivastava@gmail.com> wrote:

> I will follow the suggestion given by you and will update the result.
> However in case if I want to integrate custom recipe with
> meta-toolchain-qte, is there any example existing which can help me in
> understanding?
>
> Right now I am following the procedure given by Randy but some example
> could be of a great help!!
>
> Regards
>
> Navani
>
> On Mon, Sep 22, 2014 at 2:21 PM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
>
>> On Monday 22 September 2014 14:06:26 Navani Srivastava wrote:
>> > On Mon, Sep 22, 2014 at 1:45 PM, Paul Eggleton <
>> > paul.eggleton@linux.intel.com> wrote:
>> > > On Sunday 21 September 2014 09:26:07 Navani Srivastava wrote:
>> > > > We are not using populatesdk ... we need to generate it through
>> > > > meta-toolchain-qte only so i am trying with the solution provided by
>> > > > randy..
>> > >
>> > > Can I ask why? I'd like to understand where -c populate_sdk needs
>> further
>> > > improvement.
>> >
>> > I have to generate toolchain which contain qt related tools also like
>> qmake
>> > and qjson, so we are using meta-toolchain-qte to generate the
>> toolchain..
>> > Do you suggest it's better to integrate meta-toolchain-qte somehow with
>> > populate_sdk so that we can make life easier?
>>
>> It is possible to integrate the two - all you need to do is ensure the
>> extra
>> qte tools get added to the SDK. One way to achieve this would be to add
>> the
>> following to your image recipe:
>>
>> QTNAME = "qte"
>> QT_DIR_NAME = "qtopia"
>> require recipes-qt/meta/meta-toolchain-qt.inc
>>
>> (I haven't tested this so I'm not 100% sure if it will work, but it
>> should.)
>>
>> Cheers,
>> Paul
>>
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>>
>
>

--089e0139fb625062400503b3f852
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please find the recipe attached herewith for qjson. This r=
ecipe is helpful to work with qt4-embedded as qt4 doesn&#39;t have qjson fe=
ature in built.=C2=A0<div>I tried &#39;bitbake -c populate_sdk &lt;myimage&=
gt;&#39; but it has not integrated qjson package along. I am suspecting qjs=
on recipe now. Am i missing anything in attached recipe which is blocking m=
e to integrate qjson in SDK?=C2=A0</div><div><br></div><div>Navani</div></d=
iv><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Sep 22=
, 2014 at 2:48 PM, Navani Srivastava <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:navani.srivastava@gmail.com" target=3D"_blank">navani.srivastava@gmail.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">=
<p>I will follow the suggestion given by you and will update
the result. However in case if I want to integrate custom recipe with
meta-toolchain-qte, is there any example existing which can help me in
understanding?</p>

<p>Right now I am following the procedure given by Randy but
some example could be of a great help!!</p><p>Regards</p><span class=3D"HOE=
nZb"><font color=3D"#888888"><p>Navani</p></font></span></div><div class=3D=
"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">On Mon, Sep 22, 2014 at 2:21 PM, Paul Eggleton <span dir=3D"ltr">=
&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul=
.eggleton@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><span>On Monday 22 September 2014 14:06:26 Navani Srivastava wrote:<=
br>
&gt; On Mon, Sep 22, 2014 at 1:45 PM, Paul Eggleton &lt;<br>
&gt; <a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">pau=
l.eggleton@linux.intel.com</a>&gt; wrote:<br>
&gt; &gt; On Sunday 21 September 2014 09:26:07 Navani Srivastava wrote:<br>
&gt; &gt; &gt; We are not using populatesdk ... we need to generate it thro=
ugh<br>
&gt; &gt; &gt; meta-toolchain-qte only so i am trying with the solution pro=
vided by<br>
&gt; &gt; &gt; randy..<br>
&gt; &gt;<br>
&gt; &gt; Can I ask why? I&#39;d like to understand where -c populate_sdk n=
eeds further<br>
&gt; &gt; improvement.<br>
&gt;<br>
</span><span>&gt; I have to generate toolchain which contain qt related too=
ls also like qmake<br>
&gt; and qjson, so we are using meta-toolchain-qte to generate the toolchai=
n..<br>
&gt; Do you suggest it&#39;s better to integrate meta-toolchain-qte somehow=
 with<br>
&gt; populate_sdk so that we can make life easier?<br>
<br>
</span>It is possible to integrate the two - all you need to do is ensure t=
he extra<br>
qte tools get added to the SDK. One way to achieve this would be to add the=
<br>
following to your image recipe:<br>
<br>
QTNAME =3D &quot;qte&quot;<br>
QT_DIR_NAME =3D &quot;qtopia&quot;<br>
require recipes-qt/meta/meta-toolchain-qt.inc<br>
<br>
(I haven&#39;t tested this so I&#39;m not 100% sure if it will work, but it=
 should.)<br>
<div><div><br>
Cheers,<br>
Paul<br>
<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--089e0139fb625062400503b3f852--

--089e0139fb625062440503b3f854
Content-Type: application/octet-stream; name="qjson_0.7.1.bb"
Content-Disposition: attachment; filename="qjson_0.7.1.bb"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_i0eqjk180

REVTQ1JJUFRJT04gPSAiQSBKc29uIGxpYnJhcnkgZm9yIFFUIgpIT01FUEFHRSA9ICJodHRwOi8v
cWpzb24uc291cmNlZm9yZ2UubmV0LyIKU0VDVElPTiA9ICJsaWJzIgoKTElDRU5TRSA9ICJMR1BM
djIiCkxJQ19GSUxFU19DSEtTVU0gPSAiZmlsZTovL0NPUFlJTkcubGliO21kNT0zNTExZDcyNmQw
OTE0NGM4NTkwYWJhNDYyM2NhMmU5ZiIKClNSQ1JFViA9ICIzN2JlMmI3YmY0Y2ZlOTc4NDY2NWU1
MjBlYTAzNjgzYTlmMTRmMWQwIgpQViA9ICIwLjcuMSIKClBSID0gInIwIgpTID0gIiR7V09SS0RJ
Un0vZ2l0IgoKU1JDX1VSSSA9ICJnaXQ6Ly9naXRvcmlvdXMub3JnL3Fqc29uL3Fqc29uLmdpdCIK
CkZJTEVTXyR7UE59ID0gIiR7bGliZGlyfS9xdDQiCgpSREVQRU5EUyArPSAicXQ0LWVtYmVkZGVk
IgpERVBFTkRTICs9ICJjbWFrZSBwa2djb25maWcgcXQ0LWVtYmVkZGVkIgoKaW5oZXJpdCBxdDRl
IGNtYWtlCmluaGVyaXQgYXV0b3Rvb2xzIGdldHRleHQKCkVYVFJBX09FQ01BS0UgPSAiLURRVF9M
SUJSQVJZX0RJUj0ke09FX1FNQUtFX0xJQkRJUl9RVH0gXAogICAgICAgICAgICAgICAgIC1EUVRf
SU5TVEFMTF9MSUJTPSR7T0VfUU1BS0VfTElCRElSX1FUfSBcCiAgICAgICAgICAgICAgICAgLURR
VF9JTkNMVURFX0RJUj0ke09FX1FNQUtFX0lOQ0RJUl9RVH0gXAoJCSAtRFFUX0hFQURFUlNfRElS
PSR7T0VfUU1BS0VfSU5DRElSX1FUfSBcCiAgICAgICAgICAgICAgICAgLURRVF9NT0NfRVhFQ1VU
QUJMRT0ke09FX1FNQUtFX01PQ30gXAogICAgICAgICAgICAgICAgIC1EUVRfVUlDX0VYRUNVVEFC
TEU9JHtPRV9RTUFLRV9VSUN9IFwKICAgICAgICAgICAgICAgICAtRFFUX1VJQzNfRVhFQ1VUQUJM
RT0ke09FX1FNQUtFX1VJQzN9IFwKICAgICAgICAgICAgICAgICAtRFFUX1JDQ19FWEVDVVRBQkxF
PSR7T0VfUU1BS0VfUkNDfSBcCiAgICAgICAgICAgICAgICAgLURRVF9RTUFLRV9FWEVDVVRBQkxF
PSR7T0VfUU1BS0VfUU1BS0V9IFwKICAgICAgICAgICAgICAgICAtRFFUX1FUQ09SRV9JTkNMVURF
X0RJUj0ke09FX1FNQUtFX0lOQ0RJUl9RVH0vUXRDb3JlIFwKICAgICAgICAgICAgICAgICAtRFFU
X0RCVVNYTUwyQ1BQX0VYRUNVVEFCTEU9L3Vzci9iaW4vcWRidXN4bWwyY3BwIFwKICAgICAgICAg
ICAgICAgICAtRFFUX0RCVVNDUFAyWE1MX0VYRUNVVEFCTEU9L3Vzci9iaW4vcWRidXNjcHAyeG1s
IFwKCQkgLURRVF9NS1NQRUNTX0RJUj0ke1FNQUtFU1BFQ30vLi4vIFwKICAgICAgICAgICAgICAg
ICIKCiMgQWRkaW5nIG91ciBsaWIgZmlsZSB0byB0aGUgbWFpbiBwYWNrYWdlCkZJTEVTXyR7UE59
ID0gIiR7bGliZGlyfS8qIgoKZG9fY29uZmlndXJlX3ByZXBlbmQoKSB7Cn0KCmRvX2luc3RhbGxf
cHJlcGVuZCgpIHsKfQo=

--089e0139fb625062440503b3f854--
