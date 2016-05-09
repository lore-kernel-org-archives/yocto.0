Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48C6DE00474; Mon,  9 May 2016 08:17:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B3E8E00343
	for <yocto@yoctoproject.org>; Mon,  9 May 2016 08:17:27 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 09 May 2016 08:17:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,601,1455004800"; 
	d="scan'208,217";a="949296209"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
	by orsmga001.jf.intel.com with ESMTP; 09 May 2016 08:17:28 -0700
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
	ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Mon, 9 May 2016 08:17:26 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.2.68]) by
	ORSMSX116.amr.corp.intel.com ([10.22.240.14]) with mapi id
	14.03.0248.002; Mon, 9 May 2016 08:17:26 -0700
From: "Randle, William C" <william.c.randle@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Recipe that creates empty /var/log directory is
	auto-mounted to /var/volatile/log
Thread-Index: AQHRqgXkmnvC0H9uGUSi04P0LGjHbQ==
Date: Mon, 9 May 2016 15:17:26 +0000
Message-ID: <1462807044.2253.4.camel@intel.com>
References: <CABfz71cxNpHg5u13k_brL=2+fGTc2zK7E-OTMW3Gn9ndsWsnMw@mail.gmail.com>
In-Reply-To: <CABfz71cxNpHg5u13k_brL=2+fGTc2zK7E-OTMW3Gn9ndsWsnMw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.7.199.166]
MIME-Version: 1.0
Subject: Re: Recipe that creates empty /var/log directory is auto-mounted to /var/volatile/log
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
X-List-Received-Date: Mon, 09 May 2016 15:17:31 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_146280704422534camelintelcom_"

--_000_146280704422534camelintelcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXQgaGFwcGVucyBpbiBtZXRhL3JlY2lwZXMtY29yZS9pbml0c2NyaXB0cy4gSSBkb24ndCBrbm93
IHRoZSBoaXN0b3J5IGJlaGluZCBpdCwgYnV0IHRoZSBPRSBjb252ZW50aW9uIGlzIHRvIHVzZSAv
dmFyL3ZvbGF0aWxlLCBJIGJlbGlldmUgbWFpbmx5IHNvIHRoYXQgL3Zhci92b2xhdGlsZSBjb3Vs
ZCBiZSBhIFJBTUZTLg0KDQogICAgLUJpbGwNCg0KT24gTW9uLCAyMDE2LTA1LTA5IGF0IDEwOjAy
IC0wNDAwLCBQYXVsIEtub3BmIHdyb3RlOg0KSSBoYXZlIGEgc2ltcGxlIHJlY2lwZSB0aGF0IHBs
YWNlcyBmaWxlcyBvbiB0aGUgc3lzdGVtLg0KDQotLS0tLS0tLS0tLS0tDQpkb19pbnN0YWxsKCkg
ew0KICAjIGNyZWF0ZSB0aGlzIGRpcmVjdG9yeSwgYmVjYXVzZSBvdXIgIm5vcm1hbCIgZnN0YWIg
ZmlsZSB3aWxsIG1vdW50IGEgbG9nIHBhcnRpdGlvbiB0byBpdC4NCiAgaW5zdGFsbCAtZCAke0R9
L3Zhci9sb2cNCiAgaW5zdGFsbCAtZCAke0R9JHtzeXNjb25mZGlyfQ0KICBpbnN0YWxsIC1tIDA2
NDQgJHtXT1JLRElSfS9mc3RhYi1ub3JtYWwgJHtEfSR7c3lzY29uZmRpcn0vZnN0YWINCn0NCi0t
LS0tLS0tLS0tLS0NCg0KVGhlIGZzdGFiLW5vcm1hbCBmaWxlIGhhcyBhbiBlbnRyeSB0aGF0IG1v
dW50cyBhIHBhcnRpdGlvbiB0byB0aGlzIGNyZWF0ZWQgL3Zhci9sb2cgZGlyZWN0b3J5Lg0KDQot
LS0tLS0tLS0tLS0tDQovZGV2L21tY2JsazBwMyAgICAgICAvdmFyL2xvZyAgICAgICAgICAgICBh
dXRvICAgICAgIGRlZmF1bHRzICAwICAwDQotLS0tLS0tLS0tLS0tDQoNCkhvd2V2ZXIsIHdoZW4g
dGhlIHBhY2thZ2UgZ2V0J3MgY3JlYXRlZCwgL3Zhci9sb2cgZ2V0cyBwb2ludGVkIHRvIC92YXIv
dm9sYXRpbGUvbG9nLiBXaGVyZSBpcyB0aGlzIGhhcHBlbmluZywgYW5kIHdoeT8NCg0KLS0tLS0t
LS0tLS0tLQ0KcGtub3BmQHVidW50dTp+L0dpdC9yZWNpcGVzL2J1aWxkL3RtcC93b3JrL2NvcnRl
eGE5aGYtdmZwLW5lb24tcG9reS1saW51eC1nbnVlYWJpL2Jhc2UtZmlsZXMtZnN0YWItbm9ybWFs
LzEuMC1yMC9wYWNrYWdlJCB0cmVlDQouDQrilJzilIDilIAgZXRjDQrilIIgICDilJTilIDilIAg
ZnN0YWINCuKUlOKUgOKUgCB2YXINCiAgICDilJzilIDilIAgbG9nIC0+IHZvbGF0aWxlL2xvZw0K
ICAgIOKUlOKUgOKUgCB2b2xhdGlsZQ0KICAgICAgICDilJTilIDilIAgbG9nDQoNCi0tLS0tLS0t
LS0tLS0NCg0KVGhhbmtzLA0KUGF1bCBLbm9wZg0KU29mdHdhcmUgRW5naW5lZXINCk1lZCBYIENo
YW5nZSwgSW5jDQpwa25vcGZAbWVkeGNoYW5nZS5jb208bWFpbHRvOnBrbm9wZkBtZWR4Y2hhbmdl
LmNvbT4NCg0KLS0NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fDQp5b2N0byBtYWlsaW5nIGxpc3QNCnlvY3RvQHlvY3RvcHJvamVjdC5vcmc8bWFpbHRvOnlv
Y3RvQHlvY3RvcHJvamVjdC5vcmc+DQpodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlz
dGluZm8veW9jdG8NCg0K

--_000_146280704422534camelintelcom_
Content-Type: text/html; charset="utf-8"
Content-ID: <312649F5C830F243916F1CDD2BCFE0E1@intel.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IGJnY29sb3I9IiNmN2Y3
ZjciIHRleHQ9IiMyYzJjMmMiIGxpbms9IiM0YTkwZDkiIHZsaW5rPSIjNGE5MGQ5Ij4NCjxkaXY+
SXQgaGFwcGVucyBpbiZuYnNwO21ldGEvcmVjaXBlcy1jb3JlL2luaXRzY3JpcHRzLiBJIGRvbid0
IGtub3cgdGhlIGhpc3RvcnkgYmVoaW5kIGl0LCBidXQgdGhlIE9FIGNvbnZlbnRpb24gaXMgdG8g
dXNlIC92YXIvdm9sYXRpbGUsIEkgYmVsaWV2ZSBtYWlubHkgc28gdGhhdCAvdmFyL3ZvbGF0aWxl
IGNvdWxkIGJlIGEgUkFNRlMuPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj4mbmJzcDsg
Jm5ic3A7IC1CaWxsPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5PbiBNb24sIDIwMTYt
MDUtMDkgYXQgMTA6MDIgLTA0MDAsIFBhdWwgS25vcGYgd3JvdGU6PC9kaXY+DQo8YmxvY2txdW90
ZSB0eXBlPSJjaXRlIj4NCjxkaXYgZGlyPSJsdHIiPg0KPGRpdj5JIGhhdmUgYSBzaW1wbGUgcmVj
aXBlIHRoYXQgcGxhY2VzIGZpbGVzIG9uIHRoZSBzeXN0ZW0uPC9kaXY+DQo8ZGl2Pjxicj4NCjwv
ZGl2Pg0KPGRpdj4tLS0tLS0tLS0tLS0tPC9kaXY+DQo8ZGl2Pg0KPGRpdj5kb19pbnN0YWxsKCkg
ezwvZGl2Pg0KPGRpdj4mbmJzcDsgIyBjcmVhdGUgdGhpcyBkaXJlY3RvcnksIGJlY2F1c2Ugb3Vy
ICZxdW90O25vcm1hbCZxdW90OyBmc3RhYiBmaWxlIHdpbGwgbW91bnQgYSBsb2cgcGFydGl0aW9u
IHRvIGl0LjwvZGl2Pg0KPGRpdj4mbmJzcDsgaW5zdGFsbCAtZCAke0R9L3Zhci9sb2c8L2Rpdj4N
CjxkaXY+Jm5ic3A7IGluc3RhbGwgLWQgJHtEfSR7c3lzY29uZmRpcn08L2Rpdj4NCjxkaXY+Jm5i
c3A7IGluc3RhbGwgLW0gMDY0NCAke1dPUktESVJ9L2ZzdGFiLW5vcm1hbCAke0R9JHtzeXNjb25m
ZGlyfS9mc3RhYjwvZGl2Pg0KPGRpdj59PC9kaXY+DQo8L2Rpdj4NCjxkaXY+LS0tLS0tLS0tLS0t
LTwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+VGhlIGZzdGFiLW5vcm1hbCBmaWxlIGhh
cyBhbiBlbnRyeSB0aGF0IG1vdW50cyBhIHBhcnRpdGlvbiB0byB0aGlzIGNyZWF0ZWQgL3Zhci9s
b2cgZGlyZWN0b3J5LjwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+LS0tLS0tLS0tLS0t
LTxicj4NCjwvZGl2Pg0KPGRpdj4vZGV2L21tY2JsazBwMyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAv
dmFyL2xvZyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyBhdXRvICZu
YnNwOyAmbmJzcDsgJm5ic3A7IGRlZmF1bHRzICZuYnNwOzAgJm5ic3A7MDxicj4NCjwvZGl2Pg0K
PGRpdj4tLS0tLS0tLS0tLS0tPGJyPg0KPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5I
b3dldmVyLCB3aGVuIHRoZSBwYWNrYWdlIGdldCdzIGNyZWF0ZWQsIC92YXIvbG9nIGdldHMgcG9p
bnRlZCB0byAvdmFyL3ZvbGF0aWxlL2xvZy4gV2hlcmUgaXMgdGhpcyBoYXBwZW5pbmcsIGFuZCB3
aHk/PC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj4tLS0tLS0tLS0tLS0tPC9kaXY+DQo8
ZGl2Pg0KPGRpdj5wa25vcGZAdWJ1bnR1On4vR2l0L3JlY2lwZXMvYnVpbGQvdG1wL3dvcmsvY29y
dGV4YTloZi12ZnAtbmVvbi1wb2t5LWxpbnV4LWdudWVhYmkvYmFzZS1maWxlcy1mc3RhYi1ub3Jt
YWwvMS4wLXIwL3BhY2thZ2UkIHRyZWU8L2Rpdj4NCjxkaXY+LjwvZGl2Pg0KPGRpdj7ilJzilIDi
lIAgZXRjPC9kaXY+DQo8ZGl2PuKUgiAmbmJzcDsg4pSU4pSA4pSAIGZzdGFiPC9kaXY+DQo8ZGl2
PuKUlOKUgOKUgCB2YXI8L2Rpdj4NCjxkaXY+Jm5ic3A7ICZuYnNwOyDilJzilIDilIAgbG9nIC0m
Z3Q7IHZvbGF0aWxlL2xvZzwvZGl2Pg0KPGRpdj4mbmJzcDsgJm5ic3A7IOKUlOKUgOKUgCB2b2xh
dGlsZTwvZGl2Pg0KPGRpdj4mbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsg4pSU4pSA4pSAIGxv
ZzwvZGl2Pg0KPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj4tLS0tLS0tLS0tLS0tPC9k
aXY+DQo8YnIgY2xlYXI9ImFsbCI+DQo8ZGl2Pg0KPGRpdiBjbGFzcz0iZ21haWxfc2lnbmF0dXJl
Ij4NCjxkaXYgZGlyPSJsdHIiPg0KPGRpdj5UaGFua3MsPC9kaXY+DQo8ZGl2PlBhdWwgS25vcGY8
L2Rpdj4NCjxkaXY+U29mdHdhcmUgRW5naW5lZXI8L2Rpdj4NCjxkaXY+TWVkIFggQ2hhbmdlLCBJ
bmM8L2Rpdj4NCjxkaXY+PGEgaHJlZj0ibWFpbHRvOnBrbm9wZkBtZWR4Y2hhbmdlLmNvbSIgdGFy
Z2V0PSJfYmxhbmsiPnBrbm9wZkBtZWR4Y2hhbmdlLmNvbTwvYT48L2Rpdj4NCjwvZGl2Pg0KPC9k
aXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPHByZT4tLSANCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQp5b2N0byBtYWlsaW5nIGxpc3QNCjxhIGhyZWY9Im1haWx0
bzp5b2N0b0B5b2N0b3Byb2plY3Qub3JnIj55b2N0b0B5b2N0b3Byb2plY3Qub3JnPC9hPg0KPGEg
aHJlZj0iaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvIj5odHRw
czovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG88L2E+DQo8L3ByZT4NCjwv
YmxvY2txdW90ZT4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_146280704422534camelintelcom_--
