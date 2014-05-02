Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CF71E009BA; Fri,  2 May 2014 08:24:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.178 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f178.google.com (mail-yk0-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74946E003C7
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 08:24:15 -0700 (PDT)
Received: by mail-yk0-f178.google.com with SMTP id 20so961786yks.23
	for <yocto@yoctoproject.org>; Fri, 02 May 2014 08:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=cMaJSKvv+6UJ7Sg/S8kIMNccbAmcK92mlWTe6wjkIEE=;
	b=j6YUTL+B3Ec/14AcTyupof0iQF4AoKAChgppOaTmIEf6hAIWGIJTJOdflRhaQkLEOR
	cXyUqSE5kjvSzoVA1tNMKkSqqLdO0DWdlhQAoLNFBvSh0R6nVjeDOAEJMLmCG8xc+wBw
	syJOIQZaMosZo/evF+feIjhrheK+WBUGRmJwj36+E0qpbJAG7upBtLgDNbTA8F9KbrQF
	H68v7XVezaZ2l33BITkG4NJJ+BrDYdJ9Q9mpbe0L5jT/wI63LUSalsMvjUweliEDpaUB
	lYcJ4lcttP3ICbwzqzCojLhegmce9HmUmX438hP2LiNtPNk3vP2l/jHrXtZDv1BrbiQn
	oL3g==
MIME-Version: 1.0
X-Received: by 10.236.43.98 with SMTP id k62mr24035874yhb.33.1399044255206;
	Fri, 02 May 2014 08:24:15 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.170.124.72 with HTTP; Fri, 2 May 2014 08:24:14 -0700 (PDT)
In-Reply-To: <5363A6F6.5040507@dynamicdevices.co.uk>
References: <5362171B.8010000@dynamicdevices.co.uk>
	<5577559.2gRHFt1x94@peggleto-mobl5.ger.corp.intel.com>
	<536285BC.8010200@dynamicdevices.co.uk>
	<CAP9ODKrgW5+pPsS51QLwd+9j0q2xMd+j-Q6bjKgZdV7ho_D0WA@mail.gmail.com>
	<53632C0B.1010401@dynamicdevices.co.uk>
	<CAP9ODKpRF27T7ROz-fLidRb6R=jwzp-EW6Wd44N_hZgiNHJmSg@mail.gmail.com>
	<5363973A.6020106@dynamicdevices.co.uk>
	<CAP9ODKpi7p+oZ09XyVxAB+2Xv36YWVf4d4iO4jLEhEegzUQodA@mail.gmail.com>
	<53639996.4090604@dynamicdevices.co.uk>
	<CAP9ODKopDnkSC8mPsDMk95n_Ws+KOoFEeD1YUWyPojnmS2Xzjw@mail.gmail.com>
	<CAP9ODKpg3+SyhU9+KPqPgUyKSGb1pU2_601cK8eq1-b-KG_Hcg@mail.gmail.com>
	<5363A6F6.5040507@dynamicdevices.co.uk>
Date: Fri, 2 May 2014 12:24:14 -0300
X-Google-Sender-Auth: Cj7VknZ3Klf4-j4NO8GwZzrd9Ew
Message-ID: <CAP9ODKrG+2JTBEcMCTOsz+K0pm_60Q2ZRRTkh+Zayfaev2Lheg@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto <yocto@yoctoproject.org>
Subject: Re: Undefining a variable in a recipe?
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
X-List-Received-Date: Fri, 02 May 2014 15:24:20 -0000
X-Groupsio-MsgNum: 19330
Content-Type: multipart/mixed; boundary=20cf301b660fdb848904f86c5f6c

--20cf301b660fdb848904f86c5f6c
Content-Type: text/plain; charset=UTF-8

On Fri, May 2, 2014 at 11:08 AM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
>
> On 02/05/2014 14:25, Otavio Salvador wrote:
>> On Fri, May 2, 2014 at 10:23 AM, Otavio Salvador
> So thanks again for the advice. I think we've cracked it :)

Could you try the attached patch over Poky?

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

--20cf301b660fdb848904f86c5f6c
Content-Type: text/x-patch; charset=US-ASCII; 
	name="0001-uboot-config.bbclass-Fix-checking-of-non-setted-valu.patch"
Content-Disposition: attachment; 
	filename="0001-uboot-config.bbclass-Fix-checking-of-non-setted-valu.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hupmtmd30

RnJvbSAwYjBhM2Y2NjlmN2Q4YmViNjI2NzI5ZDg1ZTJjYmE1ZDg1ZjNlMmMwIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBPdGF2aW8gU2FsdmFkb3IgPG90YXZpb0Bvc3N5c3RlbXMuY29t
LmJyPgpEYXRlOiBGcmksIDIgTWF5IDIwMTQgMTI6MjA6MjggLTAzMDAKU3ViamVjdDogW1BBVENI
XSB1Ym9vdC1jb25maWcuYmJjbGFzczogRml4IGNoZWNraW5nIG9mIG5vbi1zZXR0ZWQgdmFsdWVz
IGluCiBVQk9PVF9DT05GSUcKT3JnYW5pemF0aW9uOiBPLlMuIFN5c3RlbXMgU29mdHdhcmUgTFRE
QS4KClRoZSBjb2RlIHdlcmUgbWlzdGFrZW5seSBjaGVja2luZyBmb3IgVUJPT1RfQ09ORklHIGZs
YWdzIGluc3RlYWQgb2YKVUJPT1RfQ09ORklHIHZhbHVlIHdoZW4gdmVyaWZ5aW5nIGZvciBkdXBs
aWNhdGVkIHNldHRpbmcsIHRoaXMgbWFkZSBpdApoYXJkIHRvIGJlIG92ZXJyaWRlbiBpbiBjYXNl
IGl0IHdhcyBuZWVkIGluIHN1YnNlcXVlbnQgbGF5ZXJzLgoKUmVwb3J0ZWQtYnk6IEFsZXggSiBM
ZW5ub24gPGFqbGVubm9uQGR5bmFtaWNkZXZpY2VzLmNvLnVrPgpTaWduZWQtb2ZmLWJ5OiBPdGF2
aW8gU2FsdmFkb3IgPG90YXZpb0Bvc3N5c3RlbXMuY29tLmJyPgotLS0KIG1ldGEvY2xhc3Nlcy91
Ym9vdC1jb25maWcuYmJjbGFzcyB8IDEzICsrKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3
IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbWV0YS9jbGFzc2Vz
L3Vib290LWNvbmZpZy5iYmNsYXNzIGIvbWV0YS9jbGFzc2VzL3Vib290LWNvbmZpZy5iYmNsYXNz
CmluZGV4IDhhYzFiNzEuLjNjNDg2NTcgMTAwNjQ0Ci0tLSBhL21ldGEvY2xhc3Nlcy91Ym9vdC1j
b25maWcuYmJjbGFzcworKysgYi9tZXRhL2NsYXNzZXMvdWJvb3QtY29uZmlnLmJiY2xhc3MKQEAg
LTEzLDI0ICsxMywyNSBAQAogCiBweXRob24gKCkgewogICAgIHVib290bWFjaGluZSA9IGQuZ2V0
VmFyKCJVQk9PVF9NQUNISU5FIiwgVHJ1ZSkKLSAgICB1Ym9vdGNvbmZpZ2ZsYWdzID0gZC5nZXRW
YXJGbGFncygnVUJPT1RfQ09ORklHJykKLSAgICAjIFRoZSAiZG9jIiB2YXJmbGFnIGlzIHNwZWNp
YWwsIHdlIGRvbid0IHdhbnQgdG8gc2VlIGl0IGhlcmUKLSAgICB1Ym9vdGNvbmZpZ2ZsYWdzLnBv
cCgnZG9jJywgTm9uZSkKKyAgICB1Ym9vdGNvbmZpZyA9IChkLmdldFZhcignVUJPT1RfQ09ORklH
JywgVHJ1ZSkgb3IgIiIpLnNwbGl0KCkKIAotICAgIGlmIG5vdCB1Ym9vdG1hY2hpbmUgYW5kIG5v
dCB1Ym9vdGNvbmZpZ2ZsYWdzOgorICAgIGlmIG5vdCB1Ym9vdG1hY2hpbmUgYW5kIG5vdCB1Ym9v
dGNvbmZpZzoKICAgICAgICAgUE4gPSBkLmdldFZhcigiUE4iLCBUcnVlKQogICAgICAgICBGSUxF
ID0gb3MucGF0aC5iYXNlbmFtZShkLmdldFZhcigiRklMRSIsIFRydWUpKQogICAgICAgICBiYi5k
ZWJ1ZygxLCAiVG8gYnVpbGQgJXMsIHNlZSAlcyBmb3IgaW5zdHJ1Y3Rpb25zIG9uIFwKICAgICAg
ICAgICAgICAgICAgc2V0dGluZyB1cCB5b3VyIG1hY2hpbmUgY29uZmlnIiAlIChQTiwgRklMRSkp
CiAgICAgICAgIHJhaXNlIGJiLnBhcnNlLlNraXBQYWNrYWdlKCJFaXRoZXIgVUJPT1RfTUFDSElO
RSBvciBVQk9PVF9DT05GSUcgbXVzdCBiZSBzZXQgaW4gdGhlICVzIG1hY2hpbmUgY29uZmlndXJh
dGlvbi4iICUgZC5nZXRWYXIoIk1BQ0hJTkUiLCBUcnVlKSkKIAotICAgIGlmIHVib290bWFjaGlu
ZSBhbmQgdWJvb3Rjb25maWdmbGFnczoKKyAgICBpZiB1Ym9vdG1hY2hpbmUgYW5kIHVib290Y29u
ZmlnOgogICAgICAgICByYWlzZSBiYi5wYXJzZS5Ta2lwUGFja2FnZSgiWW91IGNhbm5vdCB1c2Ug
VUJPT1RfTUFDSElORSBhbmQgVUJPT1RfQ09ORklHIGF0IHRoZSBzYW1lIHRpbWUuIikKIAorICAg
IHVib290Y29uZmlnZmxhZ3MgPSBkLmdldFZhckZsYWdzKCdVQk9PVF9DT05GSUcnKQorICAgICMg
VGhlICJkb2MiIHZhcmZsYWcgaXMgc3BlY2lhbCwgd2UgZG9uJ3Qgd2FudCB0byBzZWUgaXQgaGVy
ZQorICAgIHVib290Y29uZmlnZmxhZ3MucG9wKCdkb2MnLCBOb25lKQorCiAgICAgaWYgbm90IHVi
b290Y29uZmlnZmxhZ3M6CiAgICAgICAgIHJldHVybgogCi0gICAgdWJvb3Rjb25maWcgPSAoZC5n
ZXRWYXIoJ1VCT09UX0NPTkZJRycsIFRydWUpIG9yICIiKS5zcGxpdCgpCiAgICAgaWYgbGVuKHVi
b290Y29uZmlnKSA+IDE6CiAgICAgICAgIHJhaXNlIGJiLnBhcnNlLlNraXBQYWNrYWdlKCdZb3Ug
Y2FuIG9ubHkgaGF2ZSBhIHNpbmdsZSBkZWZhdWx0IGZvciBVQk9PVF9DT05GSUcuJykKICAgICBl
bGlmIGxlbih1Ym9vdGNvbmZpZykgPT0gMDoKLS0gCjIuMC4wLnJjMAoK

--20cf301b660fdb848904f86c5f6c--
