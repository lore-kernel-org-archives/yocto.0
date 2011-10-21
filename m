Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18609E01358
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2011 20:10:10 -0700 (PDT)
Received: from mail-gx0-f180.google.com ([209.85.161.180])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 20 Oct 2011 20:10:09 -0700
Received: by ggnv2 with SMTP id v2so7746106ggn.25
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2011 20:10:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.147.42 with SMTP id th10mr716480obb.44.1319166607992; Thu,
	20 Oct 2011 20:10:07 -0700 (PDT)
Received: by 10.182.16.101 with HTTP; Thu, 20 Oct 2011 20:10:07 -0700 (PDT)
Date: Thu, 20 Oct 2011 20:10:07 -0700
Message-ID: <CAPhnLPCSuj94Ng=6rBGV=EpbMf76Yumet6K-shYd7q2pgPYu7g@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Subject: [ANNOUNCEMENT] Release of meta-intel Board Support Packages for Edison 6.0
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 21 Oct 2011 03:10:10 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

We are pleased to announce the release of Intel-based board support
packages built from Yocto 1.1 "Edison".

These BSPs are available for download at the following locations:

jasperforest: https://www.yoctoproject.org/download/bsp/intel-xeon-c3500c5500-jasperforest-0
sugarbay: https://www.yoctoproject.org/download/bsp/intel-core-i3-i5-and-i7-0
blacksand: https://www.yoctoproject.org/download/yocto/intel-embedded-development-board-1-n450
crownbay: https://www.yoctoproject.org/download/yocto/intel-atom-processor-e660-intel-platform-controller-hub-eg20t-development-kit
emenlow: https://www.yoctoproject.org/download/yocto/intel-atom-z5xx-emenlow

Please note that the provided images were built using the meta-tlk
layer (time limited kernel). Build instructions to build non-tlk
images are provided in the meta-intel/meta-<bsp_name>/README for these
machines.

META-INTEL 1.1 RELEASE
====================
Version: 1.1 "Edison"
Location: http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/meta-intel-edison-6.0.tar.bz2
Mirror: http://mirrors.kernel.org/yocto/yocto/yocto-1.1/meta-intel-edison-6.0.tar.bz2
md5sum: 0f1471ee22840643a9af3f6b624232ec
Checksums: http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/meta-intel-edison-6.0.md5sum

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: SKS 1.1.0

mQENBE4OGnABCADkoQS7rxP+G22SZG5wzXXxOOcEuazauluIeKaaB4bNwoErvpknDtbpZk2H
BiHzZ8+BQhA7KNQzua5hY1Tygz2N54BfnMKj6fDWfU+TVzdlbkFxTfzqxuUbIWL9IQ3p5rYY
LRHKtKrg65lawWWqrKafAymWMFutXLbN+Fx7ri74/5e2KqEZ3pcWWdDmuNJRphplPgCysLBl
f7wWPHyJ0/xwmUpU33buYLS7Jd2I3GKILYmlNp2Qx5Gk8CpKUhij9mMRWxgc0CzWym5QqAKy
zdMsJ07E594MdazL91AMdGJ8BYk76KqdgtVA1l4WfPPU7fJbwuK1scESAOkm9oAXyBfZABEB
AAG0TFlvY3RvIEJ1aWxkIGFuZCBSZWxlYXNlIChZb2N0byBQcm9qZWN0IFJlbGVhc2VzKSA8
cmVsZWFzZXNAeW9jdG9wcm9qZWN0Lm9yZz6JATgEEwECACIFAk4OGnACGwMGCwkIBwMCBhUI
AgkKCwQWAgMBAh4BAheAAAoJEEyK+E/MEkQPUnQIANEYOx/XZj0wAiFwrkgbibWOs6JCq3pz
CFCzSya7ncH6heyYu1wr+R3yH92IdxRkVHXfS1sixdcND9BT/Xtq73d034+OMMGlRkoBpDbT
JXkuKjKkeq4wJ4m3gp+a6t9GOHahgJLcuqyXAleGdAPA5DYQFKrgunJB+4AzkxQAdzzM9Fwn
o/2QD3aI7kUcL4psl/QfWj6rf9LlPK8YHsZv1mTGEilhXaG2vHhvaQxjusZn1WnsCrpe7sin
RW6EAq12zZYWuREIKuEVfGILDzYC/YNoyk6cplM2GxFdSxVbzWbNxFD8ikdxCNOnUzuFzDny
l6Bq95Vth1Gy/luUwqLIZAu5AQ0ETg4acAEIAMebDhmV0t0BudBFTnTSkcr/aago5Jj6zR/6
z+OfLz/Gk4CSD0MfC2Tz0cPTcREH40KU4VaLlsxjneFFfM6YTcvWbErg59R87WEwB5i/0hOM
t298uEYQCbmlGpaB1Fk9BzhRBDgpGrFjrSUiHbjzdorsbo7x/EXtr+jWVB9CkNrlxjH4h3nA
eZ3P2Q8JrAI/A0Xbso5V93SdendWuC45/2L+elIXSUdNqKeYV5AAWzA+mbeAeJQTg2xhYRon
2B9Qv9XQvJOf+7fnSZ4xGM8IZYL9S+kBlIYEedE+JDnPHHRhKV3hKyaaJFelmm9zppRE90i0
9SKYDJWFkvyenYTE0ZMAEQEAAYkBHwQYAQIACQUCTg4acAIbDAAKCRBMivhPzBJEDzSpCACs
5JtovgnaTlmni4ACS2m6XODgHHYIIhwk0NhGFq8N9G1x/tZmlxoOpxhvXpveTojJLYY8OCpY
Z5qhgfqClAQyE4xJdrSxXagto98rhMHV1+Rx3UXJXxxVEcdYTxfLjT6s+iz53/pVi/xMS8tU
Kwhzy33YBdyFzRsn0fFO1L5NtZ3o1OxA89FUsWGu11spXvfGWmw0ND+OflWBIMA2a7oDqx1x
9phZYJ6OFpVRreWjl6Sd7gEg95+gyJtpU2xgFS+Mx5jRkIw6qiVe2vMwIqN4jDRyMAm4CIFC
QMEzXvM0d9WZxA9uChypVFlvBubw3QUd9GKF3KE85rkzjx46TpzH
=hBpm
-----END PGP PUBLIC KEY BLOCK-----

