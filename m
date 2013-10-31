Return-Path: <Maxin.John@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 21E13E0173E
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 07:05:17 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.2.318.1;
	Thu, 31 Oct 2013 15:05:08 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id 97057289004;
	Thu, 31 Oct 2013 15:05:08 +0100 (CET)
Date: Thu, 31 Oct 2013 15:05:08 +0100
From: "Maxin B. John" <maxin.john@enea.com>
To: <scott.m.rifenbark@intel.com>
Message-ID: <20131031140508.GA23080@sestofb10.enea.se>
MIME-Version: 1.0
In-Reply-To: <1382347275-39633-1-git-send-email-maxin.john@enea.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX03.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] adt-manual: Added note for static binary build.
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
X-List-Received-Date: Thu, 31 Oct 2013 14:05:18 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

On Mon, Oct 21, 2013 at 11:21 AM, <maxin.john@enea.com> wrote:
>    From: "Maxin B. John" <maxin.john@enea.com>
>
>    Fixes [YOCTO #5347]
>
>    SDK created using the "-c populate_sdk" will not support static
>    binary build without proper staticdev library packages. I have
>    added a note to inform the user about this limitation.
>
>    Signed-off-by: Maxin B. John <maxin.john@enea.com>
>    ---
>     documentation/adt-manual/adt-prepare.xml |    6 ++++++
>     1 file changed, 6 insertions(+)
>
>    diff --git a/documentation/adt-manual/adt-prepare.xml
>b/documentation/adt-manual/adt-prepare.xml
>    index 3c50cf9..3333cc4 100644
>    --- a/documentation/adt-manual/adt-prepare.xml
>    +++ b/documentation/adt-manual/adt-prepare.xml
>    @@ -573,6 +573,12 @@
>              When the BitBake command completes, the toolchain
>installer will be in
>              <filename>tmp/deploy/sdk</filename> in the Build
>Directory.
>          </para>

ping.



