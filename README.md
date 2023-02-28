# アプリケーション名
ホームモニタリングアプリ

# アプリケーション概要
医療施設側と患者様側で在宅医療機器関連の情報をシェアする。

# URL
https://pacemaker-38423.onrender.com

テスト用アカウント
・Basic認証用パスワード：2222
・Basic認証用ID：admin
・施設メールアドレス：admin@admin
・施設メールパスワード：testtest
・ユーザーメールアドレス：test@com
・ユーザーパスワード：toku0901

# 利用方法
## 施設側利用方法
1.施設側ログインを実施すると当アプリで登録されているユーザーの一覧が表示される。
2.ユーザー名をクリックすると、ユーザー詳細ページに遷移され使用している医療機器の詳細や来院予定・機器の交換時期などの予定が表示される。
3.ユーザーの方は高齢者が予想され、機器の登録や編集は難しいと考え、施設側でのみ機器の登録、編集が実施できる。

## ユーザー側利用方法
1.ユーザー側でログインを行うと、マイページ・ログアウトの画面が表示される。
2.マイページをクリックし自身の詳細ページに遷移する。
3.ユーザー側では機器の登録・編集は行えず登録済みの機器詳細情報や次回来院時の情報が表示され施設側と共有できる。

# アプリケーションを作成した背景
前職で働いていた際にホームモニタリングサービスを利用している患者様が多く一括管理できるアプリがあると便利ではないかと考えた。院内で採用しているホームモニタリングアプリもあったが、次回来院日や機器の交換日などは電子カルテで日程を確認する必要があり、二つのシステムを利用する煩わしさがあった。そこで、当アプリを使用することで利用ユーザーに必要な情報を一元化でき、施設側の管理としても効率的になると考えた。また、患者様が来院された時に利用機器のバッテリー残量を聞かれることが多く、当アプリを閲覧することで自身の使用している機器の情報を確認できるメリットがある。

# 洗い出した要件
要件を定義したシート：https://docs.google.com/spreadsheets/d/1SS-7Jl6D6osAvD0TVNaCit6ZOOvg4XCw4DGHlh-lzjg/edit#gid=982722306

# 実装した機能についての画像やGIFおよびその説明

# 実装予定の機能

# データベース設計
Electron
%3CmxGraphModel%3E%3Croot%3E%3CmxCell%20id%3D%220%22%2F%3E%3CmxCell%20id%3D%221%22%20parent%3D%220%22%2F%3E%3CmxCell%20id%3D%222%22%20value%3D%22users%22%20style%3D%22swimlane%3BfontStyle%3D0%3BchildLayout%3DstackLayout%3Bhorizontal%3D1%3BstartSize%3D26%3BhorizontalStack%3D0%3BresizeParent%3D1%3BresizeParentMax%3D0%3BresizeLast%3D0%3Bcollapsible%3D1%3BmarginBottom%3D0%3Balign%3Dcenter%3BfontSize%3D14%3B%22%20vertex%3D%221%22%20parent%3D%221%22%3E%3CmxGeometry%20x%3D%22414%22%20y%3D%2245%22%20width%3D%22240%22%20height%3D%22176%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%223%22%20value%3D%22name%20%5Bstring%E5%9E%8B%2CNOT%20NULL%5D%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%222%22%3E%3CmxGeometry%20y%3D%2226%22%20width%3D%22240%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%224%22%20value%3D%22email%20%5Bstring%E5%9E%8B%2CNOT%20NULL%2C%E3%83%A6%E3%83%8B%E3%83%BC%E3%82%AF%E5%88%B6%E7%B4%84%5D%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%222%22%3E%3CmxGeometry%20y%3D%2256%22%20width%3D%22240%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%225%22%20value%3D%22encrypted_password%20%5Bstring%E5%9E%8B%2CNOT%20NULL%5D%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%222%22%3E%3CmxGeometry%20y%3D%2286%22%20width%3D%22240%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%226%22%20value%3D%22address%20%5Btext%E5%9E%8B%2CNOT%20NULL%5D%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%222%22%3E%3CmxGeometry%20y%3D%22116%22%20width%3D%22240%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%227%22%20value%3D%22tel%20%5Binteger%E5%9E%8B%2CNOT%20NULL%5D%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%222%22%3E%3CmxGeometry%20y%3D%22146%22%20width%3D%22240%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%228%22%20value%3D%22adminn%22%20style%3D%22swimlane%3BfontStyle%3D0%3BchildLayout%3DstackLayout%3Bhorizontal%3D1%3BstartSize%3D26%3BhorizontalStack%3D0%3BresizeParent%3D1%3BresizeParentMax%3D0%3BresizeLast%3D0%3Bcollapsible%3D1%3BmarginBottom%3D0%3Balign%3Dcenter%3BfontSize%3D14%3B%22%20vertex%3D%221%22%20parent%3D%221%22%3E%3CmxGeometry%20x%3D%2240%22%20y%3D%2280%22%20width%3D%22230%22%20height%3D%2286%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%229%22%20value%3D%22email%20%5Bstring%E5%9E%8B%2CNOT%20NULL%2C%E3%83%A6%E3%83%8B%E3%83%BC%E3%82%AF%E5%88%B6%E7%B4%84%5D%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%228%22%3E%3CmxGeometry%20y%3D%2226%22%20width%3D%22230%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2210%22%20value%3D%22encrypted_password%20%5Bstring%E5%9E%8B%2CNOT%20NULL%5D%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%228%22%3E%3CmxGeometry%20y%3D%2256%22%20width%3D%22230%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2211%22%20value%3D%22product%22%20style%3D%22swimlane%3BfontStyle%3D0%3BchildLayout%3DstackLayout%3Bhorizontal%3D1%3BstartSize%3D26%3BhorizontalStack%3D0%3BresizeParent%3D1%3BresizeParentMax%3D0%3BresizeLast%3D0%3Bcollapsible%3D1%3BmarginBottom%3D0%3Balign%3Dcenter%3BfontSize%3D14%3B%22%20vertex%3D%221%22%20parent%3D%221%22%3E%3CmxGeometry%20x%3D%2240%22%20y%3D%22345%22%20width%3D%22240%22%20height%3D%22176%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2212%22%20value%3D%22title%20%5Bstring%E5%9E%8B%2CNOT%20NULL%5D%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%2211%22%3E%3CmxGeometry%20y%3D%2226%22%20width%3D%22240%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2213%22%20value%3D%22maker%20%5Binteger%E5%9E%8B%2CNOT%20NULL%5D%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%2211%22%3E%3CmxGeometry%20y%3D%2256%22%20width%3D%22240%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2214%22%20value%3D%22battery%20%5Bdate%E5%9E%8B%2CNOT%20NULL%5D%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%2211%22%3E%3CmxGeometry%20y%3D%2286%22%20width%3D%22240%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2215%22%20value%3D%22trouble%5Btext%E5%9E%8B%2CNOT%20NULL%5D%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%2211%22%3E%3CmxGeometry%20y%3D%22116%22%20width%3D%22240%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2216%22%20value%3D%22user%20%5Breferences%E5%9E%8B%2CNOT%20NULL%2C%E5%A4%96%E9%83%A8%E3%82%AD%E3%83%BC%5D%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%2211%22%3E%3CmxGeometry%20y%3D%22146%22%20width%3D%22240%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2217%22%20value%3D%22%22%20style%3D%22edgeStyle%3DentityRelationEdgeStyle%3BfontSize%3D12%3Bhtml%3D1%3BendArrow%3DERmandOne%3BstartArrow%3DERmandOne%3BexitX%3D0.321%3BexitY%3D0%3BexitDx%3D0%3BexitDy%3D0%3BexitPerimeter%3D0%3BentryX%3D0.243%3BentryY%3D1.067%3BentryDx%3D0%3BentryDy%3D0%3BentryPerimeter%3D0%3B%22%20edge%3D%221%22%20source%3D%2211%22%20target%3D%2210%22%20parent%3D%221%22%3E%3CmxGeometry%20width%3D%22100%22%20height%3D%22100%22%20relative%3D%221%22%20as%3D%22geometry%22%3E%3CmxPoint%20x%3D%22320%22%20y%3D%22266%22%20as%3D%22sourcePoint%22%2F%3E%3CmxPoint%20x%3D%22420%22%20y%3D%22166%22%20as%3D%22targetPoint%22%2F%3E%3C%2FmxGeometry%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2218%22%20value%3D%22plan%22%20style%3D%22swimlane%3BfontStyle%3D0%3BchildLayout%3DstackLayout%3Bhorizontal%3D1%3BstartSize%3D26%3BhorizontalStack%3D0%3BresizeParent%3D1%3BresizeParentMax%3D0%3BresizeLast%3D0%3Bcollapsible%3D1%3BmarginBottom%3D0%3Balign%3Dcenter%3BfontSize%3D14%3B%22%20vertex%3D%221%22%20parent%3D%221%22%3E%3CmxGeometry%20x%3D%22400%22%20y%3D%22345%22%20width%3D%22240%22%20height%3D%22116%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2219%22%20value%3D%22plan%20%5Bstring%E5%9E%8B%2CNOT%20NULL%5D%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%2218%22%3E%3CmxGeometry%20y%3D%2226%22%20width%3D%22240%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2220%22%20value%3D%22date%20%5Bdate%E5%9E%8B%2CNOT%20NULL%5D%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%2218%22%3E%3CmxGeometry%20y%3D%2256%22%20width%3D%22240%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2221%22%20value%3D%22user%20%5Breferences%E5%9E%8B%2CNOT%20NULL%2C%E5%A4%96%E9%83%A8%E3%82%AD%E3%83%BC%5D%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%2218%22%3E%3CmxGeometry%20y%3D%2286%22%20width%3D%22240%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2222%22%20value%3D%22%22%20style%3D%22edgeStyle%3DentityRelationEdgeStyle%3BfontSize%3D12%3Bhtml%3D1%3BendArrow%3DERmandOne%3BstartArrow%3DERmandOne%3BexitX%3D1.008%3BexitY%3D0%3BexitDx%3D0%3BexitDy%3D0%3BexitPerimeter%3D0%3B%22%20edge%3D%221%22%20source%3D%2212%22%20target%3D%225%22%20parent%3D%221%22%3E%3CmxGeometry%20width%3D%22100%22%20height%3D%22100%22%20relative%3D%221%22%20as%3D%22geometry%22%3E%3CmxPoint%20x%3D%22127.03999999999996%22%20y%3D%22355%22%20as%3D%22sourcePoint%22%2F%3E%3CmxPoint%20x%3D%22105.8900000000001%22%20y%3D%22178.01%22%20as%3D%22targetPoint%22%2F%3E%3C%2FmxGeometry%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2223%22%20value%3D%22%22%20style%3D%22edgeStyle%3DentityRelationEdgeStyle%3BfontSize%3D12%3Bhtml%3D1%3BendArrow%3DERzeroToMany%3BendFill%3D1%3BentryX%3D0.571%3BentryY%3D1.1%3BentryDx%3D0%3BentryDy%3D0%3BexitX%3D0.7%3BexitY%3D-0.009%3BexitDx%3D0%3BexitDy%3D0%3BexitPerimeter%3D0%3BentryPerimeter%3D0%3B%22%20edge%3D%221%22%20source%3D%2218%22%20target%3D%227%22%20parent%3D%221%22%3E%3CmxGeometry%20width%3D%22100%22%20height%3D%22100%22%20relative%3D%221%22%20as%3D%22geometry%22%3E%3CmxPoint%20x%3D%22280%22%20y%3D%22360%22%20as%3D%22sourcePoint%22%2F%3E%3CmxPoint%20x%3D%22380%22%20y%3D%22260%22%20as%3D%22targetPoint%22%2F%3E%3C%2FmxGeometry%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2224%22%20value%3D%22%22%20style%3D%22edgeStyle%3DentityRelationEdgeStyle%3BfontSize%3D12%3Bhtml%3D1%3BendArrow%3DERzeroToMany%3BendFill%3D1%3BexitX%3D0.292%3BexitY%3D0%3BexitDx%3D0%3BexitDy%3D0%3BexitPerimeter%3D0%3B%22%20edge%3D%221%22%20source%3D%2218%22%20target%3D%2210%22%20parent%3D%221%22%3E%3CmxGeometry%20width%3D%22100%22%20height%3D%22100%22%20relative%3D%221%22%20as%3D%22geometry%22%3E%3CmxPoint%20x%3D%22140%22%20y%3D%22320%22%20as%3D%22sourcePoint%22%2F%3E%3CmxPoint%20x%3D%22274%22%20y%3D%22136%22%20as%3D%22targetPoint%22%2F%3E%3C%2FmxGeometry%3E%3C%2FmxCell%3E%3C%2Froot%3E%3C%2FmxGraphModel%3E



# 画面遷移図

# 開発環境
・フロントエンド
・バックエンド
・インフラ
・テキストエディタ
・タスク管理

# ローカルでの動作方法
以下のコマンドを順に実行
% 
# 工夫したポイント



# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------  |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| address            | text   | null: false               |
| tel                | string | null: false               |

### Association

- has_many : comments
- has_one  : product

## adminns テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------  |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_one  : plan


## products テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| maker            | integer    | null: false                    |
| item             | string     | null: false                    |
| battery          | date       | null: false                    |
| user             | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## plans テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| plan            | integer    | null: false                    |
| date            | date       | null: false                    |
| user            | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :adminn
