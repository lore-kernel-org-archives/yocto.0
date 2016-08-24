Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8265E00A61; Wed, 24 Aug 2016 16:00:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53727E009EF
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 15:59:58 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 24 Aug 2016 15:59:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,572,1464678000"; 
	d="scan'208,217";a="870701516"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by orsmga003.jf.intel.com with ESMTP; 24 Aug 2016 15:59:58 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.2.201]) by
	ORSMSX108.amr.corp.intel.com ([169.254.2.61]) with mapi id
	14.03.0248.002; Wed, 24 Aug 2016 15:59:57 -0700
From: "Randle, William C" <william.c.randle@intel.com>
To: "timothy.t.orling@linux.intel.com" <timothy.t.orling@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [eclipse-poky][PATCH] scripts/setup.sh: check java
	version
Thread-Index: AQHR/lYUEHkd+l/iWES5EOazfZyItKBZLySA
Date: Wed, 24 Aug 2016 22:59:57 +0000
Message-ID: <1472079597.11000.13.camel@intel.com>
References: <1472077365-2634-1-git-send-email-timothy.t.orling@linux.intel.com>
In-Reply-To: <1472077365-2634-1-git-send-email-timothy.t.orling@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.7.199.154]
MIME-Version: 1.0
Subject: Re: [eclipse-poky][PATCH] scripts/setup.sh: check java version
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
X-List-Received-Date: Wed, 24 Aug 2016 23:00:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_14720795971100013camelintelcom_"

--_000_14720795971100013camelintelcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCAyMDE2LTA4LTI0IGF0IDE1OjIyIC0wNzAwLCBUaW0gT3JsaW5nIHdyb3RlOg0KDQpN
YWtlIGl0IG9idmlvdXMgd2hlbiBydW4gb24gYXV0b2J1aWxkZXIgaWYgamF2YSB2ZXJzaW9uIGlz
IHRvbyBsb3cuDQpXaGlsZSB3ZSBhcmUgYXQgaXQsIGNoZWNrIHRoYXQgamF2YSBpcyBwcmVzZW50
Lg0KDQpbWU9DVE8gIzEwMTU2XQ0KDQpCb3Jyb3dpbmcgaGVhdmlseSBmcm9tOg0KaHR0cDovL3N0
YWNrb3ZlcmZsb3cuY29tL3F1ZXN0aW9ucy83MzM0NzU0L2NvcnJlY3Qtd2F5LXRvLWNoZWNrLWph
dmEtdmVyc2lvbi1mcm9tLWJhc2gtc2NyaXB0DQoNClNpZ25lZC1vZmYtYnk6IFRpbSBPcmxpbmcg
PHRpbW90aHkudC5vcmxpbmdAbGludXguaW50ZWwuY29tPG1haWx0bzp0aW1vdGh5LnQub3JsaW5n
QGxpbnV4LmludGVsLmNvbT4+DQotLS0NCiBzY3JpcHRzL3NldHVwLnNoIHwgMjMgKysrKysrKysr
KysrKysrKysrKysrKysNCiAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKQ0KDQpkaWZm
IC0tZ2l0IGEvc2NyaXB0cy9zZXR1cC5zaCBiL3NjcmlwdHMvc2V0dXAuc2gNCmluZGV4IDc1MzEw
YWIuLmMyYjMyYTQgMTAwNzU1DQotLS0gYS9zY3JpcHRzL3NldHVwLnNoDQorKysgYi9zY3JpcHRz
L3NldHVwLnNoDQpAQCAtNjcsNiArNjcsMjkgQEAgaWYgWyAieCR1cmwiICE9ICJ4IiBdOyB0aGVu
DQogICAgIFsgIngkcG9ydCIgIT0gIngiIF0gJiYgUFJPWFlfUEFSQU09IiR7UFJPWFlfUEFSQU19
IC1EaHR0cC5wcm94eVBvcnQ9JHBvcnQiDQogZmkNCg0KK2VjaG8gIiMjIyMgQ2hlY2tpbmcgdGhh
dCBKYXZhIGlzIGF2YWlsYWJsZSAjIyMjIg0KK2lmIHR5cGUgLXAgamF2YTsgdGhlbg0KKyAgICBl
Y2hvIGphdmEgZm91bmQgaW4gUEFUSA0KKyAgICBfamF2YT1qYXZhDQorZWxpZiBbWyAtbiAiJEpB
VkFfSE9NRSIgXV0gJiYgW1sgLXggIiRKQVZBX0hPTUUvYmluL2phdmEiIF1dOyB0aGVuDQorICAg
IGVjaG8gamF2YSBmb3VuZCBpbiBKQVZBX0hPTUUNCisgICAgX2phdmE9IiRKQVZBX0hPTUUvYmlu
L2phdmEiDQorZWxzZQ0KKyAgICBlcnJfZXhpdCAyICJubyBqYXZhIg0KK2ZpDQorZWNobyAiIyMj
IyBDaGVja2luZyB0aGF0IHRoZSBhcHByb3ByaWF0ZSBKYXZhIHZlcnNpb24gaXMgYXZhaWxhYmxl
ICMjIyMiDQorSkFWQV9WRVJfU1RSSU5HPTEuOA0KK0pBVkFfVkVSX0lOVD0wMDEwMDgNCitpZiBb
WyAiJF9qYXZhIiBdXTsgdGhlbg0KKyAgICB2ZXJzaW9uPSQoIiRfamF2YSIgLXZlcnNpb24gMj4m
MSB8IGF3ayAtRiAnIicgJy92ZXJzaW9uLyB7cHJpbnQgJDJ9JykNCisgICAgZWNobyBqYXZhIHZl
cnNpb24gYXMgc3RyaW5nID0gJHZlcnNpb24NCisgICAgdmVyc2lvbl9pbnQ9JChlY2hvICIkdmVy
c2lvbiIgfCBhd2sgLUYuICd7cHJpbnRmKCIlMDNkJTAzZCIsJDEsJDIpO30nKQ0KKyAgICBlY2hv
IGphdmEgdmVyc2lvbiBhcyBpbnRlZ2VyID0gJHZlcnNpb25faW50DQorICAgIGlmIFsgJHZlcnNp
b25faW50IC1sdCAkSkFWQV9WRVJfSU5UIF07IHRoZW4NCisgICAgICAgIGVycl9leGl0IDEgIkph
dmEgdmVyc2lvbiBtdXN0IGJlICRKQVZBX1ZFUl9TVFJJTkcrIg0KKyAgICBmaQ0KK2ZpDQorDQog
IyBwcmVwYXJlIHRoZSBiYXNlIEVjbGlwc2UgaW5zdGFsbGF0aW9uIGluIGZvbGRlciAiZWNsaXBz
ZSINCiBlcF9yZWw9IlItIg0KIGVwX3Zlcj0iNC42Ig0KLS0NCjIuNy40DQoNCg0KDQpUaW0sDQoN
CkZZSSwgdGhlIGRhc2ggc2hlbGwgdXNlZCBvbiBVYnVudHUgZG9lcyBub3QgcmVjb2duaXplIHRo
ZSAiW1siIGNvbnN0cnVjdCwgYmVjYXVzZSBpdCdzIGEgYmFzaCBleHRlbnNpb24gYW5kIG5vdCBQ
T1NJWC4gSSBzdWdnZXN0IHlvdSByZXBsYWNlIGl0IHdpdGggc29tZXRoaW5nIFBPU0lYIGNvbXBs
aWFudC4NCg0KICAgIC1CaWxsDQo=

--_000_14720795971100013camelintelcom_
Content-Type: text/html; charset="utf-8"
Content-ID: <3F5965AA2421014ABBDB6D11AF15053E@intel.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IGJnY29sb3I9IiNmN2Y3
ZjciIHRleHQ9IiMyYzJjMmMiIGxpbms9IiM0YTkwZDkiIHZsaW5rPSIjNGE5MGQ5Ij4NCjxkaXY+
T24gV2VkLCAyMDE2LTA4LTI0IGF0IDE1OjIyIC0wNzAwLCBUaW0gT3JsaW5nIHdyb3RlOjwvZGl2
Pg0KPGJsb2NrcXVvdGUgdHlwZT0iY2l0ZSI+DQo8cHJlPk1ha2UgaXQgb2J2aW91cyB3aGVuIHJ1
biBvbiBhdXRvYnVpbGRlciBpZiBqYXZhIHZlcnNpb24gaXMgdG9vIGxvdy4NCldoaWxlIHdlIGFy
ZSBhdCBpdCwgY2hlY2sgdGhhdCBqYXZhIGlzIHByZXNlbnQuDQoNCltZT0NUTyAjMTAxNTZdDQoN
CkJvcnJvd2luZyBoZWF2aWx5IGZyb206DQo8YSBocmVmPSJodHRwOi8vc3RhY2tvdmVyZmxvdy5j
b20vcXVlc3Rpb25zLzczMzQ3NTQvY29ycmVjdC13YXktdG8tY2hlY2stamF2YS12ZXJzaW9uLWZy
b20tYmFzaC1zY3JpcHQiPmh0dHA6Ly9zdGFja292ZXJmbG93LmNvbS9xdWVzdGlvbnMvNzMzNDc1
NC9jb3JyZWN0LXdheS10by1jaGVjay1qYXZhLXZlcnNpb24tZnJvbS1iYXNoLXNjcmlwdDwvYT4N
Cg0KU2lnbmVkLW9mZi1ieTogVGltIE9ybGluZyAmbHQ7PGEgaHJlZj0ibWFpbHRvOnRpbW90aHku
dC5vcmxpbmdAbGludXguaW50ZWwuY29tIj50aW1vdGh5LnQub3JsaW5nQGxpbnV4LmludGVsLmNv
bTwvYT4mZ3Q7DQotLS0NCiBzY3JpcHRzL3NldHVwLnNoIHwgMjMgJiM0MzsmIzQzOyYjNDM7JiM0
MzsmIzQzOyYjNDM7JiM0MzsmIzQzOyYjNDM7JiM0MzsmIzQzOyYjNDM7JiM0MzsmIzQzOyYjNDM7
JiM0MzsmIzQzOyYjNDM7JiM0MzsmIzQzOyYjNDM7JiM0MzsmIzQzOw0KIDEgZmlsZSBjaGFuZ2Vk
LCAyMyBpbnNlcnRpb25zKCYjNDM7KQ0KDQpkaWZmIC0tZ2l0IGEvc2NyaXB0cy9zZXR1cC5zaCBi
L3NjcmlwdHMvc2V0dXAuc2gNCmluZGV4IDc1MzEwYWIuLmMyYjMyYTQgMTAwNzU1DQotLS0gYS9z
Y3JpcHRzL3NldHVwLnNoDQomIzQzOyYjNDM7JiM0MzsgYi9zY3JpcHRzL3NldHVwLnNoDQpAQCAt
NjcsNiAmIzQzOzY3LDI5IEBAIGlmIFsgJnF1b3Q7eCR1cmwmcXVvdDsgIT0gJnF1b3Q7eCZxdW90
OyBdOyB0aGVuDQogICAgIFsgJnF1b3Q7eCRwb3J0JnF1b3Q7ICE9ICZxdW90O3gmcXVvdDsgXSAm
YW1wOyZhbXA7IFBST1hZX1BBUkFNPSZxdW90OyR7UFJPWFlfUEFSQU19IC1EaHR0cC5wcm94eVBv
cnQ9JHBvcnQmcXVvdDsNCiBmaQ0KIA0KJiM0MztlY2hvICZxdW90OyMjIyMgQ2hlY2tpbmcgdGhh
dCBKYXZhIGlzIGF2YWlsYWJsZSAjIyMjJnF1b3Q7DQomIzQzO2lmIHR5cGUgLXAgamF2YTsgdGhl
bg0KJiM0MzsgICAgZWNobyBqYXZhIGZvdW5kIGluIFBBVEgNCiYjNDM7ICAgIF9qYXZhPWphdmEN
CiYjNDM7ZWxpZiBbWyAtbiAmcXVvdDskSkFWQV9IT01FJnF1b3Q7IF1dICZhbXA7JmFtcDsgW1sg
LXggJnF1b3Q7JEpBVkFfSE9NRS9iaW4vamF2YSZxdW90OyBdXTsgdGhlbg0KJiM0MzsgICAgZWNo
byBqYXZhIGZvdW5kIGluIEpBVkFfSE9NRQ0KJiM0MzsgICAgX2phdmE9JnF1b3Q7JEpBVkFfSE9N
RS9iaW4vamF2YSZxdW90Ow0KJiM0MztlbHNlDQomIzQzOyAgICBlcnJfZXhpdCAyICZxdW90O25v
IGphdmEmcXVvdDsNCiYjNDM7ZmkNCiYjNDM7ZWNobyAmcXVvdDsjIyMjIENoZWNraW5nIHRoYXQg
dGhlIGFwcHJvcHJpYXRlIEphdmEgdmVyc2lvbiBpcyBhdmFpbGFibGUgIyMjIyZxdW90Ow0KJiM0
MztKQVZBX1ZFUl9TVFJJTkc9MS44DQomIzQzO0pBVkFfVkVSX0lOVD0wMDEwMDgNCiYjNDM7aWYg
W1sgJnF1b3Q7JF9qYXZhJnF1b3Q7IF1dOyB0aGVuDQomIzQzOyAgICB2ZXJzaW9uPSQoJnF1b3Q7
JF9qYXZhJnF1b3Q7IC12ZXJzaW9uIDImZ3Q7JmFtcDsxIHwgYXdrIC1GICcmcXVvdDsnICcvdmVy
c2lvbi8ge3ByaW50ICQyfScpDQomIzQzOyAgICBlY2hvIGphdmEgdmVyc2lvbiBhcyBzdHJpbmcg
PSAkdmVyc2lvbiANCiYjNDM7ICAgIHZlcnNpb25faW50PSQoZWNobyAmcXVvdDskdmVyc2lvbiZx
dW90OyB8IGF3ayAtRi4gJ3twcmludGYoJnF1b3Q7JTAzZCUwM2QmcXVvdDssJDEsJDIpO30nKQ0K
JiM0MzsgICAgZWNobyBqYXZhIHZlcnNpb24gYXMgaW50ZWdlciA9ICR2ZXJzaW9uX2ludA0KJiM0
MzsgICAgaWYgWyAkdmVyc2lvbl9pbnQgLWx0ICRKQVZBX1ZFUl9JTlQgXTsgdGhlbg0KJiM0Mzsg
ICAgICAgIGVycl9leGl0IDEgJnF1b3Q7SmF2YSB2ZXJzaW9uIG11c3QgYmUgJEpBVkFfVkVSX1NU
UklORyYjNDM7JnF1b3Q7DQomIzQzOyAgICBmaQ0KJiM0MztmaQ0KJiM0MzsNCiAjIHByZXBhcmUg
dGhlIGJhc2UgRWNsaXBzZSBpbnN0YWxsYXRpb24gaW4gZm9sZGVyICZxdW90O2VjbGlwc2UmcXVv
dDsNCiBlcF9yZWw9JnF1b3Q7Ui0mcXVvdDsNCiBlcF92ZXI9JnF1b3Q7NC42JnF1b3Q7DQotLSAN
CjIuNy40DQoNCjwvcHJlPg0KPC9ibG9ja3F1b3RlPg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+
VGltLDwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+RllJLCB0aGUgZGFzaCBzaGVsbCB1
c2VkIG9uIFVidW50dSBkb2VzIG5vdCByZWNvZ25pemUgdGhlICZxdW90O1tbJnF1b3Q7IGNvbnN0
cnVjdCwgYmVjYXVzZSBpdCdzIGEgYmFzaCBleHRlbnNpb24gYW5kIG5vdCBQT1NJWC4gSSBzdWdn
ZXN0IHlvdSByZXBsYWNlIGl0IHdpdGggc29tZXRoaW5nIFBPU0lYIGNvbXBsaWFudC48L2Rpdj4N
CjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PiZuYnNwOyAmbmJzcDsgLUJpbGw8L2Rpdj4NCjwvYm9k
eT4NCjwvaHRtbD4NCg==

--_000_14720795971100013camelintelcom_--
