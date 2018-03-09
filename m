Return-Path: <shaotangyu2011@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C88E5E00DCA; Fri,  9 Mar 2018 00:55:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (shaotangyu2011[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 831BDE00B1A
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2018 00:55:33 -0800 (PST)
Received: by mail-it0-f42.google.com with SMTP id j7-v6so2006798ita.3
	for <yocto@yoctoproject.org>; Fri, 09 Mar 2018 00:55:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=u90GnqlBFSn4KrW/D5kak5G+3ZNIoU5Tx/Ex3XsdkW0=;
	b=HS7JyMVLuA0jf8TRru4kHK9n1xOuEzRVfOPSSbHbuAYo59iHTSYbrL/NPuF3rgqtN7
	BcDZpZ2EQi9E9M5w44QVathLK3BLfsIHL0p7AQLkGVnCqsvwaSXxW39TE6aAmALFu6lW
	01a8RJXOoN+mvlvx6OnOVN+qCy5nhtxqnPBUFgC+JH/ULGP4IqOa/Axbn+WY8UwJ2cDA
	sFPWVMO3GItxhd7mC1OPrEy/KwhTxSFFk7jmXhi9GvrgcDn5k/BiKYE+Sa4sH/+JoHW9
	HNnU93LqTobcQoB/X1NF8EbJWv56i0yxN7PAHH+qey3XbW7zpEEWrnuefWqJ9rviop3B
	+yeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=u90GnqlBFSn4KrW/D5kak5G+3ZNIoU5Tx/Ex3XsdkW0=;
	b=DcRSuf8IKCIoZoXz/I+xUEVtKyh/ih+JZ/XkS+YCC4Z1k5kUwSDZS2WbAY4HLhjFgB
	fSZxNU9eT2LMXRijFA872M7Tv6IDKsZLBr5tBwAkm+XuIZu8k0265iIpWW9/H35Yr1tf
	FaJ+Rtt4KIqRmgj2a9h4XcPZl9DafqrIy1S1ma+OnjQt2bgg4s92usyTv/ze+DhJUZAe
	UK99FhTrnAi+Ho1XpZiPBkQqKkF/IoCNtGb6xMFGb2ZsA5FBxc42yoUFSNNw4sxCo8Hq
	/QkdA4F+VkwxcUbF5bD7+sPEdU/zE8Ozhl6XUGb4PIG3SSH0+1WuMLjYrflAf/MSzSl3
	akFA==
X-Gm-Message-State: AElRT7FSY35IkKjs7+p7HApm9AvpcNRDqNS66BtUC4f2/H+YucszN6jK
	EjKdsEhPUt5yGk3Mvdbt0R6fECPL9BIMtTaXlK6gcA==
X-Google-Smtp-Source: AG47ELv22PzNV7ZLNy1SvDML74eudc+ztynNd7KYx5hCc3+ttGWBuwDUxajuqdbL7Idv+qfzLRVlSvrtzrFEJJZ4qFk=
X-Received: by 2002:a24:b842:: with SMTP id
	m63-v6mr2460199ite.110.1520585733243; 
	Fri, 09 Mar 2018 00:55:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.79.227.193 with HTTP; Fri, 9 Mar 2018 00:55:32 -0800 (PST)
From: ShaoTang Yu <shaotangyu2011@gmail.com>
Date: Fri, 9 Mar 2018 16:55:32 +0800
Message-ID: <CAJn2HRZKc=68c12uE+aR=pwzE_fKMO+RJofa1aRMgwBusvS8pQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: how to build busybox in specific recipes
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
X-List-Received-Date: Fri, 09 Mar 2018 08:55:34 -0000
Content-Type: multipart/alternative; boundary="0000000000007b090b0566f6f4fb"

--0000000000007b090b0566f6f4fb
Content-Type: text/plain; charset="UTF-8"

Hi All,

If we found busybox recipes in both meta and meta-openwrt folders, how to
control bitbake to make the busybox in meta ?

We have checked the priority and found meta 5 is already higher than
meta-openwrt 8, but bitbake build busybox in meta-openwrt... We want to
build busybox in meta. Would you please advise what I miss?  Thanks.

layer                 path                                      priority
==========================================================================
meta                  /home/stephen/LG-1000/sources/poky/meta   5
...
meta-openwrt          /home/stephen/LG-1000/sources/meta-openwrt  8
...

Regards,
Steven Yu

--0000000000007b090b0566f6f4fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+SGkgQWxsLDxkaXY+PGJyPjwvZGl2PjxkaXY+PGRpdj5JZiB3ZSBmb3Vu
ZCBidXN5Ym94IHJlY2lwZXMgaW4gYm90aCBtZXRhIGFuZCBtZXRhLW9wZW53cnQgZm9sZGVycywg
aG93IHRvIGNvbnRyb2wgYml0YmFrZSB0byBtYWtlIHRoZSBidXN5Ym94IGluIG1ldGEgP8KgPC9k
aXY+PGRpdj48YnI+PC9kaXY+PGRpdj5XZSBoYXZlIGNoZWNrZWQgdGhlIHByaW9yaXR5IGFuZCBm
b3VuZCBtZXRhIDUgaXMgYWxyZWFkeSBoaWdoZXIgdGhhbiBtZXRhLW9wZW53cnQgOCwgYnV0IGJp
dGJha2UgYnVpbGQgYnVzeWJveCBpbiBtZXRhLW9wZW53cnQuLi4gV2Ugd2FudCB0byBidWlsZCBi
dXN5Ym94IGluIG1ldGEuIFdvdWxkIHlvdSBwbGVhc2UgYWR2aXNlIHdoYXQgSSBtaXNzP8KgIFRo
YW5rcy48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PmxheWVywqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBwYXRowqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgcHJpb3JpdHk8L2Rpdj48ZGl2Pj09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PC9kaXY+PGRpdj5t
ZXRhwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgL2hvbWUvc3RlcGhlbi9MRy0xMDAwL3NvdXJj
ZXMvcG9reS9tZXRhwqAgwqA1PC9kaXY+PGRpdj4uLi48L2Rpdj48ZGl2Pm1ldGEtb3BlbndydMKg
IMKgIMKgIMKgIMKgIC9ob21lL3N0ZXBoZW4vTEctMTAwMC9zb3VyY2VzL21ldGEtb3BlbndydMKg
IDg8YnI+PC9kaXY+PGRpdj4uLi48L2Rpdj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PlJlZ2Fy
ZHMsPC9kaXY+PGRpdj5TdGV2ZW4gWXU8L2Rpdj48L2Rpdj4NCg==

--0000000000007b090b0566f6f4fb--
