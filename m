Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B31D4E00B67; Sat, 19 Dec 2015 01:40:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=BASE64_LENGTH_79_INF, BAYES_00,
	DKIM_ADSP_CUSTOM_MED, FREEMAIL_FROM, NML_ADSP_CUSTOM_MED,
	RCVD_IN_DNSWL_LOW, SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (stefboerrigter[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.5 BASE64_LENGTH_79_INF BODY: base64 encoded email part uses line
	*      length greater than 79 characters
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34585E007B4
	for <yocto@yoctoproject.org>; Sat, 19 Dec 2015 01:40:06 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1aADzf-0000Bi-Nq
	for yocto@yoctoproject.org; Sat, 19 Dec 2015 10:40:03 +0100
Received: from 037-210-158-163.dynamic.caiway.nl ([163.158.210.37])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 19 Dec 2015 10:40:03 +0100
Received: from Stefboerrigter by 037-210-158-163.dynamic.caiway.nl with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 19 Dec 2015 10:40:03 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Stef <Stefboerrigter@gmail.com>
Date: Sat, 19 Dec 2015 09:38:27 +0000 (UTC)
Message-ID: <loom.20151219T103721-415@post.gmane.org>
References: <CA+KKcbkzeEsDO63iNESUbDCAQD7R41mTzPAN65RkbFNMuq3+zA@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 163.158.210.37 (Mozilla/5.0 (Windows NT 6.1;
	WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106
	Safari/537.36)
Subject: Re: [meta-java] openjdk-8 fail to build
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
X-List-Received-Date: Sat, 19 Dec 2015 09:40:09 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

RmVkZXJpY28gUGlldHJvIEJyaWF0YSA8ZmVkZXJpY29icmlhdGFALi4uPiB3cml0ZXM6Cgo+IAo+IAo+IAo+IEhpIEFsbCwKPiBJJ20gdHJ5aW5nIHRvIGJ1aWxkIG9wZW5qZGstOCBidXQgSSdtIHN0dWNrLm15IGN1cnJlbnQgc2V0dXAgZG9lcyBub3QgCmRlZmluZSBhbnl0aGluZyBmb3I6I1BSRUZFUlJFRF9QUk9WSURFUl92aXJ0dWFsL2phdmEtCm5hdGl2ZSNQUkVGRVJSRURfUFJPVklERVJfdmlydHVhbC9qYXZhYy1uYXRpdmUKPiAKPiBmb2xsb3cgdGhlIGxvZyBlcnJvcgo+IAo+IAo+IAo+IEVSUk9SOiBGdW5jdGlvbiBmYWlsZWQ6IGRvX2NvbmZpZ3VyZSAobG9nIGZpbGUgaXMgbG9jYXRlZCBhdCAKL2hvbWUvZmVkZXJpY28veW9jdG8vaW14Ni9SNi4wL2J1aWxkLWlteDYtbXg2cXVhZC90bXAvd29yay94ODZfNjQtCmxpbnV4L29wZW5qZGstOC1uYXRpdmUvNzJiMDUtcjAvdGVtcC9sb2cuZG9fY29uZmlndXJlLjI3MDI0KUVSUk9SOiAKTG9nZmlsZSBvZiBmYWlsdXJlIHN0b3JlZCBpbjogL2hvbWUvZmVkZXJpY28veW9jdG8vaW14Ni9SNi4wL2J1aWxkLWlteDYtCm14NnF1YWQvdG1wL3dvcmsveDg2XzY0LWxpbnV4L29wZW5qZGstOC1uYXRpdmUvNzJiMDUtCnIwL3RlbXAvbG9nLmRvX2NvbmZpZ3VyZS4yNzAyNExvZyBkYXRhIGZvbGxvd3M6fCBERUJVRzogRXhlY3V0aW5nIHB5dGhvbiAKZnVuY3Rpb24gc3lzcm9vdF9jbGVhbnNzdGF0ZXwgREVCVUc6IFB5dGhvbiBmdW5jdGlvbiBzeXNyb290X2NsZWFuc3N0YXRlIApmaW5pc2hlZHwgREVCVUc6IFNJVEUgZmlsZXMgWydlbmRpYW4tbGl0dGxlJywgJ2NvbW1vbi1saW51eCcsICdjb21tb24tCmdsaWJjJywgJ2JpdC02NCcsICd4ODZfNjQtbGludXgnLCAnY29tbW9uJ118IERFQlVHOiBFeGVjdXRpbmcgc2hlbGwgCmZ1bmN0aW9uIGF1dG90b29sc19wcmVjb25maWd1cmV8IERFQlVHOiBTaGVsbCBmdW5jdGlvbiAKYXV0b3Rvb2xzX3ByZWNvbmZpZ3VyZSBmaW5pc2hlZHwgREVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gCmF1dG90b29sc19jb3B5X2FjbG9jYWxzfCBERUJVRzogUHl0aG9uIGZ1bmN0aW9uIGF1dG90b29sc19jb3B5X2FjbG9jYWxzIApmaW5pc2hlZHwgREVCVUc6IEV4ZWN1dGluZyBzaGVsbCBmdW5jdGlvbiBkb19jb25maWd1cmV8IEVSUk9SOiBubyAKY29uZmlndXJlIHNjcmlwdCBmb3VuZCBhdCAvaG9tZS9mZWRlcmljby95b2N0by9pbXg2L1I2LjAvYnVpbGQtaW14Ni0KbXg2cXVhZC90bXAvd29yay94ODZfNjQtbGludXgvb3Blbmpkay04LW5hdGl2ZS83MmIwNS1yMC9qZGs4dS0KZThiZWQxNDk2ZmYyL2NvbmZpZ3VyZXwgV0FSTklORzogZXhpdCBjb2RlIDEgZnJvbSBhIHNoZWxsIGNvbW1hbmQufCAKRVJST1I6IEZ1bmN0aW9uIGZhaWxlZDogZG9fY29uZmlndXJlIChsb2cgZmlsZSBpcyBsb2NhdGVkIGF0IAovaG9tZS9mZWRlcmljby95b2N0by9pbXg2L1I2LjAvYnVpbGQtaW14Ni1teDZxdWFkL3RtcC93b3JrL3g4Nl82NC0KbGludXgvb3Blbmpkay04LW5hdGl2ZS83MmIwNS1yMC90ZW1wL2xvZy5kb19jb25maWd1cmUuMjcwMjQpRVJST1I6IFRhc2sgCjE0NiAoL2hvbWUvZmVkZXJpY28veW9jdG8vaW14Ni9SNi4wL3NvdXJjZXMvbWV0YS1qYXZhL3JlY2lwZXMtCmNvcmUvb3Blbmpkay9vcGVuamRrLTgtbmF0aXZlXzcyYjA1LmJiLCBkb19jb25maWd1cmUpIGZhaWxlZCB3aXRoIGV4aXQgCmNvZGUgJzEnTk9URTogVGFza3MgU3VtbWFyeTogQXR0ZW1wdGVkIDExMzkgdGFza3Mgb2Ygd2hpY2ggMTUgZGlkbid0IApuZWVkIHRvIGJlIHJlcnVuIGFuZCAxIGZhaWxlZC5ObyBjdXJyZW50bHkgcnVubmluZyB0YXNrcyAoMTEzOSBvZiAKMTE1MClTdW1tYXJ5OiAxIHRhc2sgZmFpbGVkOsKgIAovaG9tZS9mZWRlcmljby95b2N0by9pbXg2L1I2LjAvc291cmNlcy9tZXRhLWphdmEvcmVjaXBlcy0KY29yZS9vcGVuamRrL29wZW5qZGstOC1uYXRpdmVfNzJiMDUuYmIsIGRvX2NvbmZpZ3VyZQo+IAo+IHRoYW5rcyBhbmQgcmVnYXJkcwo+IAo+IEZlZGVyaWNvCj4gCj4gCj4gCj4gCj4gCgpUcnkgdG8gYXBwbHkgdGhpcyBwYXRjaCB0byBtZXRhIGxheWVyOgpodHRwczovL2dpdGh1Yi5jb20vcmVoc2Fjay9wb2t5L2NvbW1pdC82NWNkYWQ0MGYyNzE3Yjg1ODkyZTEyYzgwNzQ5Y2Q0M2MKMWUxOWE0MAoKSXQgd29ya2VkIGZvciBtZQo=


