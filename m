Return-Path: <mail@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13029E01561
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 23:47:07 -0700 (PDT)
Received: from mysterion.bmw-carit.intra (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher DHE-RSA-CAMELLIA256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mail@timomueller.eu)
	by h1954115.stratoserver.net (mailserver) with ESMTPSA id B6ED16E941F3; 
	Wed, 26 Jun 2013 08:47:01 +0200 (CEST)
Message-ID: <51CA8E5F.1090803@timomueller.eu>
Date: Wed, 26 Jun 2013 08:46:55 +0200
From: =?ISO-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <cover.1372173542.git.timo.mueller@bmw-carit.de>
	<4cc66f41f5df55001702d867e511ab5d83d58b2c.1372173542.git.timo.mueller@bmw-carit.de>
	<C6510F6D410BB64A8C15398EDC6B847C73C4F55E@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73C4F55E@ORSMSX103.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [PATCH][eclipse-poky] plugin/sdk.ide: Pre-populate project specific profile form
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
X-List-Received-Date: Wed, 26 Jun 2013 06:47:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Jessica,

Zhang, Jessica wrote, On 25.06.2013 23:52:
> Hi Timo,
>
> How am I supposed to apply this patch? I tried to apply it against
master first, then the patch2 of your v3 patch series won't apply. If I
apply your v3 patch series first, then this patch won't apply after that...


I've messed up with the prefix, that's why it didn't apply. Sorry about 
that. I'll resend the patch that will apply to the master.

>
> Thanks,
> Jessica
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Timo Mueller
> Sent: Tuesday, June 25, 2013 8:33 AM
> To: yocto@yoctoproject.org
> Cc: Timo Mueller
> Subject: [yocto] [PATCH][eclipse-poky] plugin/sdk.ide: Pre-populate project specific profile form
>
> From: Timo Mueller <timo.mueller@bmw-carit.de>
>
> On initial setup the profile form is populated with the values from the previously selected target profile. This allows the user to quickly make project specific adaptions of an existing profile.
>
> If a project specific profile is already defined the form will show the values from this configuration.
>
> Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
> ---
>   .../sdk/ide/preferences/YoctoSDKProjectPropertyPage.java   | 14 ++++++++++++--
>   1 file changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
> index 9f99caf..408ce76 100644
> --- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
> +++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoS
> +++ DKProjectPropertyPage.java
> @@ -31,14 +31,15 @@ import org.osgi.service.prefs.BackingStoreException;
>   import org.yocto.sdk.ide.YoctoProfileElement;
>   import org.yocto.sdk.ide.YoctoProfileSetting;
>   import org.yocto.sdk.ide.YoctoProjectSpecificSetting;
> +import org.yocto.sdk.ide.YoctoSDKChecker;
>   import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
>   import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
>   import org.yocto.sdk.ide.YoctoSDKMessages;
> -import org.yocto.sdk.ide.utils.YoctoSDKUtils;
> -import org.yocto.sdk.ide.utils.YoctoSDKUtilsConstants;
>   import org.yocto.sdk.ide.YoctoSDKPlugin;  import org.yocto.sdk.ide.YoctoUIElement;  import org.yocto.sdk.ide.YoctoUISetting;
> +import org.yocto.sdk.ide.utils.YoctoSDKUtils;
> +import org.yocto.sdk.ide.utils.YoctoSDKUtilsConstants;
>
>   public class YoctoSDKProjectPropertyPage extends PropertyPage implements
>                  IWorkbenchPropertyPage {
> @@ -288,6 +289,15 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
>          public void switchToProjectSpecificProfile()
>          {
>                  YoctoUIElement profileElement = getElemFromProjectPreferences(getProject());
> +               SDKCheckResults result =
> +YoctoSDKChecker.checkYoctoSDK(profileElement);
> +
> +               if ((result != SDKCheckResults.SDK_PASS)) {
> +                       /* Project specific profile has not yet been defined,
> +                        * leave settings from previously selected profile
> +                        */
> +                       return;
> +               }
> +
>                  yoctoUISetting.setCurrentInput(profileElement);
>          }
>
> --
> 1.8.1.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

If this is merged, the "Add target profile quick switch" patch series 
has to be adapted slightly. I'll send a rework of the series in that case.

Best regards,
Timo

