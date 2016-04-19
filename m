Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 955DAE00DC1; Tue, 19 Apr 2016 05:57:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 614D6E00D1E
	for <yocto@yoctoproject.org>; Tue, 19 Apr 2016 05:57:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u3JCvtju001880
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 19 Apr 2016 05:57:55 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 19 Apr 2016 05:57:55 -0700
To: Dmytro Milinevskyy <milinevskyy@gmail.com>, <yocto@yoctoproject.org>
References: <CAOUdcc_NJQpH4GMO47D_0S3db57L7VizZ5=nxU7U3O6N-MXsCg@mail.gmail.com>
	<CAOUdcc-x_vbB+g+hsgPL3b_v8RtbLOn85HrcVX8tPV=EcM5hNg@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <57162B52.6060204@windriver.com>
Date: Tue, 19 Apr 2016 07:57:54 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <CAOUdcc-x_vbB+g+hsgPL3b_v8RtbLOn85HrcVX8tPV=EcM5hNg@mail.gmail.com>
Subject: Re: RPM bogus signature
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
X-List-Received-Date: Tue, 19 Apr 2016 12:57:58 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

On 4/18/16 6:54 AM, Dmytro Milinevskyy wrote:
> Hi,
> 
> I've found the culprit. 
> RPM5 does package auto-signing. Itself it's not a big deal but the problem is
> that it also considers that package is valid if the pubkey is present in the RPM
> header.
> This is an extremely severe security issue - any "signed" package can be
> installed on the target even if the public key is not installed in the local RPM DB.

RPM5 has an internal non-reputable signature added to all packages.  This is a
signature, but it shows nothing about authenticity or permission to install.
The signature is there as a way to validate that the contents of the package
have not been modified.  (Since the signature can be replaced, this is really
equivalent to the md5sum / sha256 check that is used in rpm, but significantly
stronger and harder to accidently defeat.)

This is NOT a security risk.  RPM knows this is a non-reputable signature.  It
was added to ensure that before RPM fields are processed that basic sanity
checking has been performed.  (The md5sum, while insecure, also requires headers
to be processed to pull out the values.. causing more chance of 'fuzz' to cause
a problem in an unsigned package.)

Really the packages should be verified as reputable by the package management
front end (smart) prior to RPM.  With smart you can sign the package feed, if
everything in the package feed is reputable smart will then verify the package
matches the feed description and is unmodified BEFORE it calls RPM.


If you absolutely must check if the signature is reputable or not, then you will
have make a few modiciations to RPM5's source.  The changes themselves are very
simple.  (I've had to do this for a project in the past, below is based on what
I needed to do to meet my customer's requirements.)

In rpmdb/pkgio.c:

Search for "Has this pubkey failed a previous lookup?" (around line 210).

Instead of "goto leave:" you need to check if the signature is in the database
or if it's only available in the package itself.

-     && rpmbfChk(awol, sigp->signid, sizeof(sigp->signid)))
+     && rpmbfChk(awol, sigp->signid, sizeof(sigp->signid))) {
+       /* If it's a 'bad' sig, check if it's an autosign package pubkey (if pre
sent). */
+       if (dig->pub && dig->publen > 0) {
+           uint8_t keyid[8];
+
+           xx = pgpPubkeyFingerprint((const rpmuint8_t *)dig->pub, dig->publen,
 keyid);
+           if (!memcmp(sigp->signid, keyid, sizeof(keyid))) {
+               res = RPMRC_NOTTRUSTED;
+           }
+       }
        goto leave;
+    }

Then down around line 369, you'll see:

        case RPMRC_NOKEY:
            if (validate < 0)   /* XXX ignore NOKEY w rpmdb pubkey. */
                break;

Change it to:

        case RPMRC_NOKEY:
            if (validate < 0)   /* XXX ignore NOKEY w rpmdb pubkey. */
+               rc = RPMRC_NOTTRUSTED;
-               break;


(there are other ways to do this as well, but this is the way I've done it in
the past.  I'd rather the package pass validation and be set as "NOTTRUSTED" in
this case.)


Finally in lib/rpmgi.c:

around line 176, you'll see:

        case RPMRC_FAIL:
        default:
            (void)headerFree(h);
            h = NULL;
            gi->rc = rpmrc;
            break;
        case RPMRC_NOSIG:               /* XXX FIXME */
        case RPMRC_NOTTRUSTED:
        case RPMRC_NOKEY:
        case RPMRC_OK:
            break;

If you want NOSIG, NOTTRUSTED and NOKEY to be failures, you need to do it here.
 Just move the cases you want to fail above the default, such as:

        case RPMRC_FAIL:
        case RPMRC_NOSIG:               /* XXX FIXME */
        case RPMRC_NOTTRUSTED:
        case RPMRC_NOKEY:
        default:
            (void)headerFree(h);
            h = NULL;
            gi->rc = rpmrc;
            break;
        case RPMRC_OK:
            break;

(And no, I don't believe the code above is generally applicable.  In fact it
will probably interfere with many projects ability to get things to work
properly -- so I have no plans to submit patches to OE.  As I said before the
right way to deal with this, in most cases, is to prevent the package from being
downloaded in the front end.)

> I would consider to either switch to RPM4 or just disable this "feature" in RPM5.
> BTW, what's purpose of using RPM5 in Yocto? The gross distros(SuSe, Fedora, etc)
> still successfully use RPM4. This means that it is exhaustively verified.

RPM 4 has had significant security problems in the past.  (I don't know the
current state of it.)

RPM 4 does not permit arbitrary architecture fields, this is a feature that
OpenEmbedded requires.  We can't preprogram all possible values into RPM.

RPM 4 does not support cross compilation of the tooling, as well as using it in
a cross-install system.

RPM 4 does not care about anyone other then workstation/server users.  We've
tried in the past, and been ignored.

You are free to use it if it works for your project, but expect major problems
unless you happen to be on an IA32 target, and change all of the package arches
in the system to look like a Red Hat or SuSE system...

> Best regards,
> Dimitri
> 
> On Sat, Apr 16, 2016 at 2:57 PM, Dmytro Milinevskyy <milinevskyy@gmail.com
> <mailto:milinevskyy@gmail.com>> wrote:
> 
>     Hello,
> 
>     currently I'm trying to enforce rpm signature verification on the target
>     device and get weird bogus signature of the RPM packages when the signature
>     is not enabled in the configuration.
>     The main issue that this signature is considered as valid by the RPM 5.4.14
>     which is used by Yocto. And thus it is "correctly" installed by "smart"
>     packaging system on the target.
> 
>     For example here 2 packages built w/o signing. Both packages have different
>     keys and RPM is not complaining:
>     >tmp/sysroots/x86_64-linux/usr/bin/rpm -Kv
>     ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm
>     ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm
>     ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm:
>         Header V4 DSA signature: OK, key ID bd8f688a
>         Header SHA1 digest: OK (45dfa7cbfe3cfc3a6c4a928e58b100d81f5a367d)
>         MD5 digest: OK (a8450299f5c2d9adecc4bda799b7038d)
>     ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm:
>         Header V4 DSA signature: OK, key ID bc6abdd3
>         Header SHA1 digest: OK (e95dc6b40965224ae443460117fe2ada4f855b2d)
>         MD5 digest: OK (1dda4ae1673ab96dd9edbdc423df29ac)
> 
>     Nevertheless the host RPM(rpm4 from ubuntu) is correctly identifying that
>     the signature is invalid:
>     >rpm -Kv ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm
>     ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm
>     ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm:
>         Header V4 DSA/SHA1 Signature, key ID bd8f688a: NOKEY
>         Header SHA1 digest: OK (45dfa7cbfe3cfc3a6c4a928e58b100d81f5a367d)
>         MD5 digest: OK (a8450299f5c2d9adecc4bda799b7038d)
>     ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm:
>         Header V4 DSA/SHA1 Signature, key ID bc6abdd3: NOKEY
>         Header SHA1 digest: OK (e95dc6b40965224ae443460117fe2ada4f855b2d)
>         MD5 digest: OK (1dda4ae1673ab96dd9edbdc423df29ac)
> 
>     Following is an output of properly signed packages. You may see that the
>     keys are valid(you can also check the pub key on MIT key storage):
>     rpm -Kv ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm
>     ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm
>     ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm:
>         Header V4 RSA/SHA1 Signature, key ID 5a906f4c: OK
>         Header SHA1 digest: OK (e82b83bc3a4713d36548a3ea6b7c0d3c3dc35f1f)
>         MD5 digest: OK (e9bfa1fc6a4ae90e84851bfd4583ec29)
>     ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm:
>         Header V4 RSA/SHA1 Signature, key ID 5a906f4c: OK
>         Header SHA1 digest: OK (d6925400698be829e08bc5013fd28d2c829a2600)
>         MD5 digest: OK (427f42d79b83e314f741ff73a672c5dc)
> 
> 
>     Host RPM version
>     >rpm --version
>     RPM version 4.11.2
> 
>     Yocto RPM version
>     >tmp/sysroots/x86_64-linux/usr/bin/rpm --version
>     rpm (RPM) 5.4.14
> 
>     Yocto version: jethro (1a52eceaa5df89914b6a711defdcf0046e74c7f6)
> 
>     Best regards,
>     Dimitri
> 
> 
> 
> 


