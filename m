Return-Path: <robert_joslyn@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 274C4E00CFE; Wed,  2 Mar 2016 10:50:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.117.214.141 listed in list.dnswl.org]
X-Greylist: delayed 3588 seconds by postgrey-1.32 at yocto-www;
	Wed, 02 Mar 2016 10:49:59 PST
Received: from valiant.selinc.com (valiant.selinc.com [74.117.214.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBC88E006AE
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 10:49:59 -0800 (PST)
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by valiant.selinc.com (8.15.0.59/8.15.0.59) with ESMTP id
	u22Hn2tR010319
	for <yocto@yoctoproject.org>; Wed, 2 Mar 2016 09:49:02 -0800
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 43D40F78:BEF1AE15-88257F6A:0061E32E;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF39 May 13, 2013
Message-ID: <OF43D40F78.BEF1AE15-ON88257F6A.0061E32E-88257F6A.0061FA08@selinc.com>
From: robert_joslyn@selinc.com
Date: Wed, 2 Mar 2016 09:50:10 -0800
X-MIMETrack: S/MIME Sign by Notes Client on Robert Joslyn/SEL(Release 8.5.3FP4
	SHF39|May 13, 2013) at 03/02/2016 09:50:10 AM,
	Serialize by Notes Client on Robert Joslyn/SEL(Release 8.5.3FP4
	SHF39|May 13, 2013) at 03/02/2016 09:50:10 AM,
	Serialize complete at 03/02/2016 09:50:10 AM,
	S/MIME Sign failed at 03/02/2016 09:50:10 AM: The cryptographic key was
	not found,
	Serialize by Router on Edison/SEL(Release 9.0.1FP3 HF515|April 25,
	2015) at 03/02/2016 09:50:11 AM,
	Serialize complete at 03/02/2016 09:50:11 AM
X-Proofpoint-Virus-Version: vendor=nai engine=5800 definitions=8092
	signatures=670697
Subject: Re: Question about access local stash/bitbucket server via yocto
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
X-List-Received-Date: Wed, 02 Mar 2016 18:50:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

eW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnIHdyb3RlIG9uIDAzLzAyLzIwMTYgMDY6MjM6
MTIgQU06DQoNCj4gRnJvbTogIk9sc3NvbiBSaWthcmQgKFJCU04vRVNXMSkiIDxSaWthcmQuT2xz
c29uQHNlLmJvc2NoLmNvbT4NCj4gVG86ICJ5b2N0b0B5b2N0b3Byb2plY3Qub3JnIiA8eW9jdG9A
eW9jdG9wcm9qZWN0Lm9yZz4sIA0KPiBEYXRlOiAwMy8wMi8yMDE2IDA2OjMxIEFNDQo+IFN1Ympl
Y3Q6IFt5b2N0b10gUXVlc3Rpb24gYWJvdXQgYWNjZXNzIGxvY2FsIHN0YXNoL2JpdGJ1Y2tldCBz
ZXJ2ZXIgdmlhIA0KeW9jdG8NCj4gU2VudCBieTogeW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qu
b3JnDQo+IA0KPiBEZWFyIFlvY3RvIG1lbWJlcnMsDQo+IA0KPiBNeSBmaXJzdCBwb3N0IHNvIGhl
cmUgd2UgZ2/igKYuDQo+IDEpIEkgYW0gbmV3IHRvIHlvY3RvIGFuZCBzbyBpcyB0aGUgY29tcGFu
eSBJIHdvcmsgZm9y4oCmLg0KPiAyKSBNeSBjb21wYW55cyBmaXJld2FsbC9pbnRyYW5ldCBibG9j
a3MgZ2l0IHByb3RvY29sIHNvIG9ubHkgaHR0cCB3b3Jrc+KApiANCg0KPiANCj4gQW55aG93LCBp
biB0aGUgY29tcGFueSB0aGVyZSBpcyBhIGxvY2FsIHN0YXNoL2JpdGJ1Y2tldCBzZXZlciB3aGlj
aCANCj4gcnVuIG9uIFhYWFggcG9ydCBudW1iZXIgd2hlcmUgSSBoYXZlIHNvbWUgcmVwb3NpdG9y
aWVzIGFuZCBJIGFtIGFibGUNCj4gdG8gY2xvbmUgdGhlbSB3aXRoOiANCj4gZ2l0IGNsb25lIGh0
dHA6Ly88VVNFUj5APHNlcnZlcj46PFBPUlQ+L1hYWC9+WVlZL1paWi5naXRbJTNjVVNFUiUNCj4g
M2VAJTNjc2VydmVyJTNlXSA9PT4gVGhpcyB3b3JrcyBmaW5lIGZyb20gY29tbWFuZCBsaW5lLCBu
b3RlIHRoZSDigJx+4oCdDQo+IA0KPiBIb3dldmVyLCBub3cgSSB3YW50IHRvIGRvIHRoZSBjbG9u
ZSBmcm9tIGEgeW9jdG8vYml0YmFrZSBmaWxlIEkgDQo+IGNyZWF0ZWQgYXMgZm9sbG93czoNCj4g
TElDX0ZJTEVTX0NIS1NVTSA9ICJmaWxlOi8vTElDRU5TRTttZDU9WFhYWFhYWFhYWFhYWFhYWFhY
WFhYWFhYWCINCj4gRklMRVNFWFRSQVBBVEhTX3ByZXBlbmQgOj0gIiR7VEhJU0RJUn0vJHtQTn0t
JHtQVn06Ig0KPiBTUkNSRVYgPSAiWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhY
WFhYIg0KPiBTUkNfVVJJID0gImh0dHA6LzxVU0VSPkA8c2VydmVyPjo8UE9SVD4vWFhYL35ZWVkv
WlpaLmdpdCINCj4gSG93ZXZlciB0aGlzIGZhaWxzIHdpdGggVXNlcm5hbWUvUGFzc3dvcmQgQXV0
aGVudGljYXRpb24gRmFpbGVkIA0KPiB3aGljaCBJIGZpbmQgc3RyYW5nZSBzaW5jZSBJIGhhdmUg
bm8gcHJvYmxlbSB3aXRoIGdpdCBjbG9uZSDigKYuLg0KDQpVc2luZyBTU0ggaXMgcHJvYmFibHkg
eW91ciBiZXN0IGJldC4gWW91J2xsIG5lZWQgdG8gdXBsb2FkIHlvdXIgcHVibGljDQprZXkgdG8g
U3Rhc2ggZmlyc3QgKGl0J3MgaW4geW91ciBhY2NvdW50IHNldHRpbmdzKS4gVGhlIFNSQ19VUkkg
c3ludGF4IGlzDQphIGJpdCBhd2t3YXJkIGluIG15IG9waW5pb24sIGJ1dCBpdCBsb29rcyBsaWtl
IHRoaXM6DQpTUkNfVVJJID0gImdpdDovLzx1c2VyPkA8c2VydmVyPjo8cG9ydD4vWFhYL35ZWVkv
WlpaLmdpdDtwcm90b2NvbD1zc2giDQoNCk5vdGUgdGhhdCB0aGUgdXNlciBpcyBub3QgeW91ciBT
dGFzaCB1c2VybmFtZSwgaXQncyB0aGUgdXNlciB0aGF0IFN0YXNoDQp1c2VzIGZvciBTU0guIEl0
IGlzIHByb2JhYmx5ICJnaXQiIG9yIHNvbWV0aGluZyBzaW1pbGFyLiBUaGUgcG9ydCBudW1iZXIN
CmFuZCB0aWxkZSBhcmUgbm90IGEgcHJvYmxlbS4NCg0KPiANCj4gTm93IEkgaGF2ZSB0d28gcXVl
c3Rpb25zOg0KPiAxKSAgICAgSXMgaXQgcG9zc2libGUgdG8gYWRkIG15IFVTRVIgYW5kIFBBU1NX
T1JEIGluIHRoZSBiaXRiYWtlLw0KPiB5b2N0byAoKi5iYiBmaWxlKSBmaWxlIHRvIHdvcmsgYXJv
dW5kIHRoZSBVc2VybmFtZS9QYXNzd29yZCANCj4gQXV0aGVudGljYXRpb24gRmFpbGVkIHByb2Js
ZW0uDQo+IDIpICAgICBJIGFsc28gaGF2ZSBhIHF1ZXN0aW9uIGlmIHRoZXJlIGFyZSBhbnkgbGlt
aXRhdGlvbiBpbiB0aGUgDQo+IHBhdGggSSB1c2UsIGZvciBleGFtcGxlOg0KPiBhLiAgICAgSXMg
aXQgT0sgdG8gaGF2ZSA8UE9SVD4gbnVtYmVyIGFzIHBhcnQgb2YgcGF0aCwgSSBoYXZlbuKAmXQg
DQo+IHNlZW4gdGhhdCBpbiBhbnkgb3RoZXIgZmlsZXMgcmVsYXRlZCB0byB5b2N0by9iaXRiYWtl
PyBBbmQgaWYgbm90IA0KPiBob3cgZG8gSSBzcGVjaWZ5IHRoZSBQT1JUIG51bWJlcj8NCj4gYi4g
ICAgT3IgbWF5YmUgdGhlIOKAnH7igJ0gd2lsbCBjYXVzZSBwcm9ibGVtICwgSSBoYXZlbuKAmXQg
c2VlbiB0aGlzIGluIA0KPiBhbnkgcGF0aCBuYW1lcyByZWxhdGVkIHRvIHlvY3RvL2JpdGJha2U/
DQo+IA0KPiBBbnkgYWR2aWNlIEkgYXBwcmVjaWF0ZWQuDQo+IA0KPiBNaXQgZnJldW5kbGljaGVu
IEdyw7zDn2VuIC8gQmVzdCByZWdhcmRzIA0KPiANCj4gUmlrYXJkIE9sc3Nvbg0KPiANCj4gRW5n
aW5lZXJpbmcgU29mdHdhcmUsIEx1bmQsIFN3ZWRlbiAoUkJTTi9FU1cpIA0KPiBUZWwuICs0Nig0
NikyNzAtNjg0MyB8IFJpa2FyZC5PbHNzb24yQHNlLmJvc2NoLmNvbSANCg0KLS0NClJvYmVydCBK
b3NseW4NClNvZnR3YXJlIEVuZ2luZWVyLCBSJkQgLSBBdXRvbWF0aW9uDQpTY2h3ZWl0emVyIEVu
Z2luZWVyaW5nIExhYm9yYXRvcmllcw0KNTA5LTMzMi0xODkwIGV4dC4gMzIxNA0K

