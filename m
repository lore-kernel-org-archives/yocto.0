Return-Path: <Kamal.Pandey@ifm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74B7FE00777; Thu, 23 Aug 2018 23:24:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [91.90.150.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from s2065.ppsmtp.net (s2065.ppsmtp.net [91.90.150.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30057E0056D
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2018 23:24:47 -0700 (PDT)
Received: from pps.filterd (s2065.ppsmtp.net [127.0.0.1])
	by s2065.ppsmtp.net (8.16.0.22/8.16.0.22) with SMTP id w7O6KJ83003322
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2018 08:24:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ifm.com;
	h=from : to : subject :
	date : message-id : references : in-reply-to : mime-version :
	content-type : content-transfer-encoding; s=pps;
	bh=0gYqvdjoeA4gXDTREL8ILIaZmPwPT9K0DQjBNmnzvRo=;
	b=gEV/H++TELI2yMLzyeP5kJaPn+Erp2uPsFc4zfAMGM4bUTFWsBO1U9M1nI6iHAjO8BKg
	LHh4apYGx8bVo9fWl3lBxQG9NBd17/Cj1LsCQ+Pi7foR4tqbz3z3Rem5jnZInkYbyHSL
	XX3OHos2C3gNm98kOSZbsspafCSlJoA6O8RXx2D03DhX9YZD9RXPJBOx5fb5oBCk2Vrz
	KjAPlTh3uNaUWHeHiGuE82fO7b+T45mgeuj08LtoQgzILgPdDND5500zSF8rHBdg0wYL
	+FZuAoh/ox1N174kOO9YBkHvUSD/uCdN4AH1z+dKHxOH8sR88Augz2NNoJjHfxt9p2KX
	wA== 
Received: from deesdmz226.dmz.es.de.ifm (mail26.ifm.com [194.156.152.226])
	by s2065.ppsmtp.net with ESMTP id 2kxum1rbjd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2018 08:24:46 +0200
Received: from deesdmz226.dmz.es.de.ifm (localhost.localdomain [127.0.0.1])
	by deesdmz226.dmz.es.de.ifm (Postfix) with ESMTP id 1B5F6703851
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2018 08:24:46 +0200 (CEST)
From: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
To: Stefano Babic <sbabic@denx.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] chromium is compiling but is not able to add in the image
Thread-Index: AdQ5UPtFgaKPlaT/QnyZIeHR/YiQogBmBcSAACJOS8A=
Date: Fri, 24 Aug 2018 06:24:44 +0000
Message-ID: <f843bc097fd44130b4e77f0f9f166190@ifm.com>
References: <fc50e40975134a01920906aad4ab0e75@ifm.com>
	<ef914983-18be-fb83-c66c-0a4f143bcd3f@denx.de>
In-Reply-To: <ef914983-18be-fb83-c66c-0a4f143bcd3f@denx.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.29.169.96]
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.2.1013-24050.005
X-TM-AS-Result: No-20.787200-5.000000-10
X-TMASE-MatchedRID: gjZGo2H/wj940oYTKg8HObmR+C0l9vjVDiUf/hQuYYV8vx8dQICa6yhr
	mWmpDVe3yOG+Yu+HbSHB38Dojr+byndR7mzeevyF4EprSlQmFqCnHBIbyMjCFKW8iLE/8mvBZvo
	+mFW19mDUVzrVUIa+Hd/y4J8tbxR4hPc4FTJN6V6+dJWHbg4ITgkN8Uvsy+ntodIUcQJI9au2nf
	YrObEBpVAClqDzpx+8arnhIxqJb1/Ot+/gOYaZxXz7JKfsgADxIF0pgClUYTdGMe+tDjQ3FiGZ6
	VVOVYeWZDAZ95+BuLje3KxnnlJS+ktr2/0YfvSFRAvohSJUpI9Aq6/y5AEOOlvo8FSqar5SFTfB
	1yBPlPIYN30K9opVtfCG04vtV53VbXK/7rgzL94lqaDT/7H7lwXXmzqmsIi7wzktBYXAF0qlzbG
	AkBjoui1cB5dFkhuQEkzEL2uuKb4B5kjkFVgUExLdEZ9lwgu/PgIRwzTzhDTFc2fetunSkRbza2
	EmlP8JV9h+7QneNjWRk6XtYogiatLvsKjhs0ldMzlI0OdP3LN/A75FGmxK1Sq2rl3dzGQ1DBbGv
	tcMofwV5Wpz1HDk4gHkV1V/tgYGDog1wGIy/q6fwFdU1wG/KaVOQ4qQ5RNg
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--20.787200-5.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.2.1013-24050.005
x-tm-snts-smtp: DB5FF8858969A36D173DE944EA97E2E84EBA17280D819BE4F8E35E04378CEDCF2
x-c2processedorg: 02c94ccb-b9eb-40fe-af38-4bcaa8aaafa4
MIME-Version: 1.0
X-CompuMailGateway: Version: 7.00.0.18486.x86_64 COMPUMAIL Date:
	20180824062446Z
X-Proofpoint-ID: SID=2kxum1rbjd QID=2kxum1rbjd-1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-08-24_03:, , signatures=0
Subject: Re: chromium is compiling but is not able to add in the image
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
X-List-Received-Date: Fri, 24 Aug 2018 06:24:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmt5b3UgdmVyeSBtdWNoIGZvciB0aGUgcmVzcG9uc2UuDQpjb3JlLWltYWdlLW1pbmltYWwt
cGRtMyAgaXMgYSBjdXN0b20gaW1hZ2UgbWFkZSBmcm9tIHByb3ByaWV0YXJ5IG1ldGEtcGRtMyBs
YXllci4gVGhpcyBsYXllciBpcyB1c2VkIHRvIGNyZWF0ZSBpbWFnZXMgYW5kIHBhY2thZ2VzIGZv
ciBjdXN0b20gZW1iZWRkZWQgZGV2aWNlLg0KSSB2ZSBlbmFibGVkIHgxMSBpbiBjb25mL2xvY2Fs
LmNvbmYgZmlsZS4NCklNQUdFX0lOU1RBTExfYXBwZW5kID0gIiB4MTEgIFwNCgkJCSAgICAgICAg
IGNocm9taXVtIFwgIA0KDQphbmQgeWVzIHRoYXQgZGV2aWNlIGhhcyBhIG1hbGkgR1BVIHN1cHBv
cnQuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBTdGVmYW5vIEJhYmljIDxz
YmFiaWNAZGVueC5kZT4gDQpTZW50OiAyMyBBdWd1c3QgMjAxOCAyMToyNg0KVG86IFBhbmRleSwg
S2FtYWwgPEthbWFsLlBhbmRleUBpZm0uY29tPg0KQ2M6IFJvc3MsIEZlZG9yIDxmZWRvci5yb3Nz
QGlmbS5jb20+OyBCYXJ0aCwgU3RlZmZlbiA8c3RlZmZlbi5iYXJ0aEBpZm0uY29tPjsgTWFyZWsg
VmFzdXQgPG1hcmV4QGRlbnguZGU+DQpTdWJqZWN0OiBSZTogW3lvY3RvXSBjaHJvbWl1bSBpcyBj
b21waWxpbmcgYnV0IGlzIG5vdCBhYmxlIHRvIGFkZCBpbiB0aGUgaW1hZ2UNCg0KSGkgS2FtYWws
DQoNCihvdXQgb2YgbGlzdCk6DQoNCkkganVzdCBzZWVuIHlvdXIgcG9zdCB0byBZb2N0bydzTUwu
Li4NCg0KT24gMjEvMDgvMjAxOCAxNToyOCwgUGFuZGV5LCBLYW1hbCB3cm90ZToNCj4gSSB0cmll
ZCBhZGRpbmcgY2hyb21pdW0gcGFja2FnZSB2aWEgdGhlIG1ldGEtYnJvd3NlciBsYXllci4gSXQg
aXMgDQo+IGNvbXBpbGluZyB3aGVuIEkgcnVuICovJCBiaXRiYWtlIGNocm9taXVtLyovLi8gQnV0
IHdoZW4gSSBydW4gDQo+ICovJGJpdGJha2UgY29yZS1pbWFnZS1taW5pbWFsLXBkbTMvKi4NCg0K
Li5idXQgSSBjYW4gdW5kZXJzdGFuZCB0aGF0IG5vYm9keSBoYXMgdGhlIHNtYWxsIGlkZWEgd2hh
dA0KY29yZS1pbWFnZS1taW5pbWFsLXBkbTMgaXMgIQ0KDQo+IEl04oCZcyBub3QgYWRkaW5nIGNo
cm9taXVtIHRvIHRoZSBpbWFnZSBhbmQgdGhyb3dpbmcgZXJyb3JzIGFzIHNob3duIA0KPiBiZWxv
dzoNCj4gDQo+IMKgDQo+IA0KPiBMb2FkaW5nIGNhY2hlOiAxMDAlDQo+IHwjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMN
Cj4gfCMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIw0KPiB8IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjI3wNCj4gVGltZTogMDowMDowMA0KPiANCj4gTG9hZGVkIDMy
NDkgZW50cmllcyBmcm9tIGRlcGVuZGVuY3kgY2FjaGUuDQo+IA0KPiBQYXJzaW5nIHJlY2lwZXM6
IDEwMCUNCj4gfCMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIw0KPiB8IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjDQo+IHwjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjI3wNCj4gVGltZTogMDow
MDowMg0KPiANCj4gUGFyc2luZyBvZiAyMzY4IC5iYiBmaWxlcyBjb21wbGV0ZSAoMjM1MiBjYWNo
ZWQsIDE2IHBhcnNlZCkuIDMyNjAgDQo+IHRhcmdldHMsIDk5IHNraXBwZWQsIDEwIG1hc2tlZCwg
MCBlcnJvcnMuDQo+IA0KPiBXQVJOSU5HOiBObyByZWNpcGVzIGF2YWlsYWJsZSBmb3I6DQo+IA0K
PiDCoA0KPiAvaG9tZS9pZXBsL3dvcmsveW9jdG9fYnVpbGQvbWV0YS14aWxpbngvbWV0YS14aWxp
bngtY29udHJpYi9yZWNpcGVzLWtlDQo+IHJuZWwvbGludXgvbGludXgteGxueF8yMDE4LjEuYmJh
cHBlbmQNCj4gDQo+IMKgDQo+IC9ob21lL2llcGwvd29yay95b2N0b19idWlsZC9tZXRhLXBkbTMv
bWV0YS1pZm0tcGRtMy1ic3AvcmVjaXBlcy1leHRlbmQNCj4gZWQvaW1hZ2VzL3N3dXBkYXRlLWd1
aS1pbWFnZS5iYmFwcGVuZA0KPiANCj4gwqANCj4gL2hvbWUvaWVwbC93b3JrL3lvY3RvX2J1aWxk
L21ldGEtcGRtMy9tZXRhLWlmbS1wZG0zLWJzcC9yZWNpcGVzLXN1cHBvcg0KPiB0L3Jlc2N1ZWd1
aS9yZXNjdWVndWlfJS5iYmFwcGVuZA0KPiANCj4gwqANCj4gL2hvbWUvaWVwbC93b3JrL3lvY3Rv
X2J1aWxkL21ldGEtcGRtMy9tZXRhLWlmbS1wZG0zLWJzcC9yZWNpcGVzLXN1cHBvcg0KPiB0L3N3
dXBkYXRlL3N3dXBkYXRlXyUuYmJhcHBlbmQNCj4gDQo+IMKgDQo+IC9ob21lL2llcGwvd29yay95
b2N0b19idWlsZC9tZXRhLXBkbTMvbWV0YS1pZm0tcGRtMy9yZWNpcGVzLW1vbm8vbW9uby8NCj4g
bW9uby1uYXRpdmVfNS40LjEuNi5iYmFwcGVuZA0KPiANCg0KWW91ciBiYmxheWVycy5jb25mIGlz
IG1heWJlIGEgbWVzcy4gVGhleSBhcmUgc29sdmVkIGluIG1ldGEtaWZtLXBkbTMgYW5kIG1ldGEt
aWZtLXBkbTMtYnNwDQoNCj4gTk9URTogUmVzb2x2aW5nIGFueSBtaXNzaW5nIHRhc2sgcXVldWUg
ZGVwZW5kZW5jaWVzDQo+IA0KPiBFUlJPUjogTm90aGluZyBSUFJPVklERVMgJ2Nocm9taXVtJyAo
YnV0IA0KPiAvaG9tZS9pZXBsL3dvcmsveW9jdG9fYnVpbGQvbWV0YS1wZG0zL21ldGEtaWZtLXBk
bTMtYnNwL3JlY2lwZXMtY29yZS9pDQo+IG1hZ2VzL2NvcmUtaW1hZ2UtbWluaW1hbC1wZG0zLmJi
DQo+IFJERVBFTkRTIG9uIG9yIG90aGVyd2lzZSByZXF1aXJlcyBpdCkNCj4gDQo+IE5PVEU6IFJ1
bnRpbWUgdGFyZ2V0ICdjaHJvbWl1bScgaXMgdW5idWlsZGFibGUsIHJlbW92aW5nLi4uDQo+IA0K
PiBNaXNzaW5nIG9yIHVuYnVpbGRhYmxlIGRlcGVuZGVuY3kgY2hhaW4gd2FzOiBbJ2Nocm9taXVt
J10NCj4gDQo+IEVSUk9SOiBSZXF1aXJlZCBidWlsZCB0YXJnZXQgJ2NvcmUtaW1hZ2UtbWluaW1h
bC1wZG0zJyBoYXMgbm8gDQo+IGJ1aWxkYWJsZSBwcm92aWRlcnMuDQo+IA0KPiBNaXNzaW5nIG9y
IHVuYnVpbGRhYmxlIGRlcGVuZGVuY3kgY2hhaW4gd2FzOiANCj4gWydjb3JlLWltYWdlLW1pbmlt
YWwtcGRtMycsICdjaHJvbWl1bSddDQo+IA0KPiDCoA0KPiANCj4gU3VtbWFyeTogVGhlcmUgd2Fz
IDEgV0FSTklORyBtZXNzYWdlIHNob3duLg0KPiANCj4gU3VtbWFyeTogVGhlcmUgd2VyZSAyIEVS
Uk9SIG1lc3NhZ2VzIHNob3duLCByZXR1cm5pbmcgYSBub24temVybyBleGl0IGNvZGUuDQo+IA0K
PiBUaGUgYmJsYXllcnMuY29uZiBmaWxlIGlzIHRha2VuIGNhcmUgb2ZmLg0KPiANCj4gSeKAmXZl
IGFkZGVkIHRoZSBsaW5lDQo+IA0KPiAqL0lNQUdFX0lOU1RBTExfYXBwZW5kID0g4oCcIGNocm9t
aXVt4oCdLyogaW4gdGhlIGxvY2FsLmNvbmYgZmlsZSBhbG9uZyANCj4gd2l0aA0KPiDCoCovTElD
RU5TRV9GTEFHX1dISVRFTElTVCA9IC8qKi/vu78vKiovLyoNCj4gDQo+ICovIiBjb21tZXJjaWFs
X2xpYmF2IGNvbW1lcmNpYWxfeDI2NCBjb21tZXJjaWFsLyoqLyIvKg0KPiANCj4gQXBhcnQgZnJv
bSB0aGF0IEZpcmVmb3ggaXMgYWJsZSB0byBjb21waWxlIGFuZCBpdOKAmXMgYmVlbiBhZGRlZCB0
byB0aGUgDQo+IGltYWdlLiBDYW4gc29tZWJvZHkgdGVsbCBtZSB3aGF0IGlzIGNhdXNpbmcgdGhp
cyBpc3N1ZS4NCj4gDQo+IMKgDQo+IA0KDQpBcGFydCBvZiB0aGF0LCBhcmUgeW91IHRyeWluZyB0
byBnZXQgaW4gcnVubmluZyB3aXRoIHNvbWV0aGluZyBwcm92aWRlZCBieSBNYXJlayBmb3IgTWFs
aSAoR1BVIHN1cHBvcnQpID8gSSBqdXN0IHdhcm4gdGhhdCBDaHJvbWl1bSB3aXRob3V0IEdQVSBp
cyB2ZXJ5IHNsb3cgYW5kIHByYXRpY2FsbHkgdW51c2FibGUuIEV2ZW4gd2l0aCBHUFUgc3VwcG9y
dCBpdCBsb29rcyBxdWl0ZSBzbG93Li4uDQoNCkFyZSB5b3UgZW5hYmxlIHgxMSA/IEFzIGZhciBh
cyBJIGtub3csIGNocm9taXVtIGlzIHJ1bm5pbmcganVzdCBvbiB0b3Agb2YgeDExIC0gSSBhZGRl
ZCBNYXJlayBpbiBDQyB0aGF0IGNhbiBzdWdlc3Qgc29tZXRoaW5nIGVsc2UuDQoNCkJlc3QgcmVn
YXJkcywNClN0ZWZhbm8gQmFiaWMNCg0KDQotLQ0KPT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQpERU5YIFNvZnR3YXJl
IEVuZ2luZWVyaW5nIEdtYkgsICAgICAgTWFuYWdpbmcgRGlyZWN0b3I6IFdvbGZnYW5nIERlbmsN
CkhSQiAxNjUyMzUgTXVuaWNoLCBPZmZpY2U6IEtpcmNoZW5zdHIuNSwgRC04MjE5NCBHcm9lYmVu
emVsbCwgR2VybWFueQ0KUGhvbmU6ICs0OS04MTQyLTY2OTg5LTUzIEZheDogKzQ5LTgxNDItNjY5
ODktODAgRW1haWw6IHNiYWJpY0BkZW54LmRlID09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KDQo=


