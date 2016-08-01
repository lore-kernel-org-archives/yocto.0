Return-Path: <c.andersen@kostal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0C07E00E7C; Mon,  1 Aug 2016 08:07:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [193.22.205.229 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 316 seconds by postgrey-1.32 at yocto-www;
	Mon, 01 Aug 2016 08:07:04 PDT
Received: from securemail.kostal.com (securemail.kostal.com [193.22.205.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12F56E00E73
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 08:07:04 -0700 (PDT)
Received: from debesgmg001.de.kostal.int ([193.22.205.239]) by 
	securemail.kostal.com (8.14.7/8.14.7) with ESMTP id u71EwOSK028867 
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO) 
	for <yocto@yoctoproject.org>; Mon, 1 Aug 2016 16:58:24 +0200
Received: from debesgmg001.de.kostal.int 
	(debesgmg001.de.kostal.int [127.0.0.1]) by debesgmg001.de.kostal.int 
	(Postfix) with ESMTP id B3C5539804E for <yocto@yoctoproject.org>; Mon,
	1 Aug 2016 17:01:41 +0200 (CEST)
From: "Andersen, Christian" <c.andersen@kostal.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Trouble with yocto sdk in collaboration with 
	eclipse	and cmake
Thread-Index: AQHR6/vWa+o9cJDcO0u8LtllVbV+8qA0LduQ
Date: Mon, 1 Aug 2016 15:01:36 +0000
Message-ID: <5af8ce966c1747b7ac0a7454a814d684@DEBEMAIL001.kostal.int>
References: <f6b417b9e59c4208bf7bc9e42b48cfbd@DEBEMAIL001.kostal.int> 
	<B692FAD6-991B-491A-9B8C-F0ECECA6C1A1@gmail.com> 
	<73e7977df57b4fefb44dec4ef46e60b6@DEBEMAIL001.kostal.int> 
	<CAMKF1srzYMqzHVW5_bp5QAoLGQiM6msBPex5=7AdLRg6xrycJA@mail.gmail.com>
In-Reply-To: <CAMKF1srzYMqzHVW5_bp5QAoLGQiM6msBPex5=7AdLRg6xrycJA@mail.gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.20.2.192]
MIME-Version: 1.0
X-SafeGuard_MailGateway: Version: 5.80.2.12968 SGMG_SOPHOS Date: 
	20160801150141Z
X-OriginalId: qfu71F2pir004638
x-msw-jemd-spam: not checked
Subject: Re: Trouble with yocto sdk in collaboration with eclipse	and cmake
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
X-List-Received-Date: Mon, 01 Aug 2016 15:07:08 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCj4+IE9uIEp1bCAyOSwgMjAxNiwgYXQgMToyNyBBTSwgSGFydHdpZywgR3VpZG8gPGcu
aGFydHdpZ0Brb3N0YWwuY29tPiB3cm90ZToNCj4+DQo+PiBIaSwNCj4+IEkgaGF2ZSBzb21lIHRy
b3VibGUgd2l0aCB0aGUgeW9jdG8gc2RrIGluIGNvbGxhYm9yYXRpb24gd2l0aCBlY2xpcHNlIGFu
ZCB5b2N0byBDTWFrZSBwcm9qZWN0LiBJIGhhdmUgaW5zdGFsbCBhbGwgbmVjZXNzYXJ5IGVjbGlw
c2UgcGx1Z2lucyBhbmQgbGlua2VkIG15IHNkayB3aXRoIHRoZSB5b2N0by1wbHVnaW4gYXMgZGVz
Y3JpYmVkIGluIHRoZSBtYW51YWwuIFdoZW4gSSB0cnkgdG8gYnVpbGQgdGhlICJIZWxsbyBXb3Js
ZCIgeW9jdG8gY21ha2UgcHJvamVjdCBpdCBmYWlscyB3aXRoIGZvbGxvd2luZyBtZXNzYWdlOg0K
Pj4NCj4+IC4uDQo+PiBDTWFrZSBFcnJvciBhdA0KPj4gL3Vzci9zaGFyZS9jbWFrZS0yLjgvTW9k
dWxlcy9DTWFrZVRlc3RDQ29tcGlsZXIuY21ha2U6NjEgKG1lc3NhZ2UpOiBUaGUgQyBjb21waWxl
ciAiL29wdC9wdWNrLzEuMC4wL3N5c3Jvb3RzL3g4Nl82NC1wdWNrc2RrLWxpbnV4L3Vzci9iaW4v
YXJtLWtvc3RhbC1saW51eC1nbnVlYWJpL2FybS1rb3N0YWwtbGludXgtZ251ZWFiaS1nY2MiDQo+
PiAgaXMgbm90IGFibGUgdG8gY29tcGlsZSBhIHNpbXBsZSB0ZXN0IHByb2dyYW0gLi4uDQo+Pg0K
Pj4gVGhpcyBlcnJvciBvY2N1cnMgYmVjYXVzZSB0aGUgY29tcGlsZXIgaXMgY2FsbGVkIHdpdGgg
dGhlIHdyb25nIGZsYWdzLg0KDQp0aGUgZXJyb3Igc2VlbXMgdG8gYmUgYWxyZWFkeSBmaXhlZCBp
biB0aGUgZWNsaXBzZS1wb2t5IHJlcG9zaXRvcnkuIENvbW1pdCAjODMxNWQzZWM4NCB0byBsdW5h
L2tyb2dvdGggYnJhbmNoOg0KDQpvcmcueW9jdG8uc2RrLmlkZTogVXNlIENGTEFHUyBmcm9tIEND
IHZhcmlhYmxlIGluIGNtYWtlIHRvb2xjaGFpbiBmaWxlDQpUaGUgQ0MgYW5kIENYWCB2YXJpYWJs
ZXMgaW1wb3J0ZWQgZnJvbSB0aGUgWW9jdG8gYnVpbGQgZW52aXJvbm1lbnQNCm1heSBjb250YWlu
IGFkZGl0aW9uYWwgY29tcGlsZXIgZmxhZ3MgYWZ0ZXIgdGhlIGNvbXBpbGVyIG5hbWUuIEV4dHJh
Y3QNCnRob3NlIGFuZCBhZGQgdGhlbSB0byBjbWFrZSB0b29sY2hhaW4gZmlsZSB2YXJpYWJsZXMs
IHRvby4NCg0KVGhpcyBpcyB0aGUgZXhhY3QgaXNzdWUgd2UgaGF2ZSBzZWVuLiBVbmZvcnR1bmF0
ZWx5IHRoaXMgY2hhbmdlIGhhcyBiZWVuIGNvbW1pdGVkIGFmdGVyIHRoZSB0YWcgZm9yIHlvY3Rv
LTIuMSB3YXMgY3JlYXRlZCBhbmQgc28gdGhpcyBpcyBub3QgcmVsZWFzZWQgeWV0LiBBZnRlciBi
dWlsZGluZyBhIG5ldyB2ZXJzaW9uIG9mIHRoZSBlY2xpcHNlIHBsdWdpbiBiYXNlZCBvbiB0aGUg
bHVuYS9rcm9nb3RoIGJyYW5jaCB0aGUgZXJyb3IgbWVudGlvbmVkIGFib3ZlIGlzIGdvbmUuDQoN
ClJlZ2FyZHMNCkNocmlzdGlhbg0KDQoNCktPU1RBTCBJbmR1c3RyaWUgRWxla3RyaWsgR21iSCAt
IFNpdHogTMO8ZGVuc2NoZWlkLCBSZWdpc3RlcmdlcmljaHQgSXNlcmxvaG4gSFJCIDM5MjQgLSBV
U3QtSWQtTnIuL1ZhdCBOby46IERFIDgxMzc0MjE3MA0KUG9zdGFuc2NocmlmdDogQW4gZGVyIEJl
bGxtZXJlaSAxMCwgRC01ODUxMyBMw7xkZW5zY2hlaWQgKiBUZWxlZm9uOiArNDkgIDIzNTEgMTYt
MCAqIFRlbGVmYXg6ICs0OSAgMjM1MSAxNi0yNDAwDQpXZXJrc2Fuc2NocmlmdDogTGFuZ2UgRWNr
IDExLCBELTU4MDk5IEhhZ2VuICogVGVsLiArNDkgMjMzMSA4MDQwLTYwMSAqIEZheCArNDkgMjMz
MSA4MDQwLTYwMg0KR2VzY2jDpGZ0c2bDvGhydW5nOiBBeGVsIFppbW1lcm1hbm4sIERpcGwuLUlu
Zy4gTWFyd2luIEtpbnpsLCBEaXBsLi1PZWMuIEFuZHJlYXMgS29zdGFsDQoNCg==

